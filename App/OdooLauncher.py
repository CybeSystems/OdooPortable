#!/usr/bin/env python
# -*- coding: utf-8 -*-

#########################################################################################################
# Set Path
#########################################################################################################
import os, sys

scriptpath = os.path.realpath(os.path.dirname(sys.argv[0])).replace('\\','/')
scriptpathWinSep = os.path.realpath(os.path.dirname(sys.argv[0]))

sys.path.insert(0, scriptpath)
sys.path.insert(0, os.path.abspath('..'))
sys.path.insert(0, os.path.join(scriptpath, 'lib'))

if sys.maxsize == 2147483647:
    sys.path.insert(0, os.path.join(scriptpath, 'libX86'))
    sys.path.insert(0, scriptpath + '/libX86/libraries.zip')
    print ("Running x86")
else:
    sys.path.insert(0, os.path.join(scriptpath, 'libX64'))
    sys.path.insert(0, scriptpath + '/libX64/libraries.zip')
    print ("Running x64")

import re, time, webbrowser

#########################################################################################################
# Import Libs
#########################################################################################################
import dict4ini
import urllib.request
import psutil
from PyQt5 import QtCore, QtGui, uic
from PyQt5.QtWidgets import QApplication, QMessageBox, QDialog, QVBoxLayout, QTextEdit, QMainWindow, QSystemTrayIcon, QMenu, QAction, QDesktopWidget
QtCore.QString = str


os.environ['QT_API'] = 'pyqt'
if hasattr(sys, 'frozen'):
    if sys.maxsize == 2147483647:
        QtCore.QCoreApplication.setLibraryPaths(['libX86/plugins'])
    else:
        QtCore.QCoreApplication.setLibraryPaths(['libX64/plugins'])

#########################################################################################################
# Read Config
#########################################################################################################
scriptpathParentFolder = os.path.dirname(scriptpathWinSep)
print(scriptpathParentFolder)
datapath = scriptpathParentFolder + "\\Data"

if not os.path.isdir(scriptpathParentFolder + '\\Data'):
    os.makedirs(scriptpathParentFolder + '\\Data')

if not os.path.isfile(datapath + '\\config.ini'):
    QtCore.QFile.copy(scriptpathWinSep + '\\DefaultData\\config.ini', datapath + '\\config.ini')

mainSettings ={}
mainConfigFile = datapath + '\\config.ini'

mainSettings = dict4ini.DictIni(mainConfigFile)
iniMainSettings = dict4ini.DictIni(mainConfigFile)

runtimeSettings = {}

def defaultMainSettingsIni():
    mainSettings['other'] = {}
    mainSettings['other']['theme'] = "Default"
    mainSettings['other']['minimizeToTray'] = True
    mainSettings['other']['autostartBrowser'] = False

    mainSettings['autostart'] = {}
    mainSettings['autostart']['autostartOdoo'] = True
    mainSettings['autostart']['autostartPostgre'] = True

    mainSettings['odoo'] = {}
    mainSettings['odoo']['startpage'] = "http://127.0.0.1:8069/web#menu_id=102&action=94"
    mainSettings['odoo']['postgreHost'] = "127.0.0.1"
    mainSettings['odoo']['postgrePost'] = "5432"
    mainSettings['odoo']['postgreUser'] = "odoo"
    mainSettings['odoo']['postgrePassword'] = "odoo"
    mainSettings['odoo']['postgrePath'] = scriptpath + "/Runtime/PostgreSQL/bin"

    runtimeSettings["closeMainWindow"] = False

def replaceSetting():
    defaultMainSettingsIni()
    for section in list(iniMainSettings.keys()):
        for opt in list(iniMainSettings[section].keys()):
            value = iniMainSettings[section][opt]
            mainSettings[section][opt] = str(value)
            if value == 'true' or value == 'True':
                mainSettings[section][opt] = True
            if value == 'false' or value == 'False':
                mainSettings[section][opt] = False
            if str(value).isdigit() == True:
                mainSettings[section][opt] = int(value)

replaceSetting()

def writeMainSettings():
    mainSettings.save()

#########################################################################################################
# Check if program is already running
#########################################################################################################
count = 0

procs = psutil.get_process_list()
for proc in procs:
    try:
        if proc.name() == 'OdooLauncher-X86.exe':
            count = count + 1
        elif proc.name() == 'OdooLauncher-Console-X86.exe':
            count = count + 1
        elif proc.name() == 'OdooLauncher-X64.exe':
            count = count + 1
        elif proc.name() == 'OdooLauncher-Console-X64.exe':
            count = count + 1
    except:
        pass

if count > 1:
    webbrowser.open(mainSettings['odoo']['startpage'])
    os._exit(1)

def loadUi(uifile, parent=None):
    from PyQt5 import uic
    return uic.loadUi(uifile, parent)

class MainWindow(QMainWindow):

    restartOdooMenuItem = QtCore.pyqtSignal()
    stopOdooMenuItem = QtCore.pyqtSignal()
    restartPostgreMenuItem = QtCore.pyqtSignal()
    stopPostgreMenuItem = QtCore.pyqtSignal()

    def __init__(self):
        super(MainWindow, self).__init__()
        self.startCybeSystemsApplication()

    def startCybeSystemsApplication(self):
        #Set Loading TrayIcon
        self.setWindowIcon(QtGui.QIcon(scriptpath + '/ressource/icons/icon.png'))

        img = QtGui.QImage()
        img.load(scriptpath + '/ressource/icons/icon_loading.png')
        self.pixmap = QtGui.QPixmap.fromImage(img)
        self.icon = QtGui.QIcon()
        self.icon.addPixmap(self.pixmap)
        self.tray = QSystemTrayIcon(self.icon, self)
        self.tray.show()
        traymenu = QMenu()

        #Set Real Icon
        self.tray.hide()
        img = QtGui.QImage()
        img.load(scriptpath + '/ressource/icons/icon.png')
        self.pixmap = QtGui.QPixmap.fromImage(img)
        self.icon = QtGui.QIcon()
        self.icon.addPixmap(self.pixmap)
        self.tray = QSystemTrayIcon(self.icon, self)
        self.tray.activated.connect(self.onTrayIconActivated)
        self.tray.setContextMenu(traymenu)
        self.tray.show()

        #Load Stylesheet
        if mainSettings['other']['theme'].lower() != 'default':
            if mainSettings['other']['theme'].lower() == 'steamlike':
                stylesheetFile = open(scriptpath + '/ressource/ui/steamlike.stylesheet', "r")
            elif mainSettings['other']['theme'].lower() == 'darkorange':
                stylesheetFile = open(scriptpath + '/ressource/ui/darkorange.stylesheet', "r")
            elif mainSettings['other']['theme'].lower() == 'maya':
                stylesheetFile = open(scriptpath + '/ressource/ui/maya.stylesheet', "r")
            stylesheet = stylesheetFile.read()
            traymenu.setStyleSheet(stylesheet)
            stylesheetFile.close()

        trayoption_openBrowser_entry = QAction(QtGui.QIcon(self.icon), "Open Odoo", self)
        trayoption_openBrowser_entry.triggered.connect(lambda: webbrowser.open(mainSettings['odoo']['startpage']))
        traymenu.addAction(trayoption_openBrowser_entry)
        trayoption_openBrowser_entry.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/world.png'))

        traymenu.addSeparator()

        tools = traymenu.addMenu('&Odoo')
        tools.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/icon.png'))

        tools_odoo_restart = QAction(QtGui.QIcon(self.icon), "Restart Server", self)
        tools_odoo_restart.triggered.connect(lambda: (self.restartOdooMenuItem.emit()))
        tools.addAction(tools_odoo_restart)
        tools_odoo_restart.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/start_server.png'))

        tools_odoo_stop = QAction(QtGui.QIcon(self.icon), "Stop Server", self)
        tools_odoo_stop.triggered.connect(lambda: (self.stopOdooMenuItem.emit()))
        tools.addAction(tools_odoo_stop)
        tools_odoo_stop.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/stop_server.png'))

        #traymenu.addSeparator()

        tools = traymenu.addMenu('&PostgreSQL')
        tools.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/postgresql.png'))

        tools_postgre_restart = QAction(QtGui.QIcon(self.icon), "Restart Server", self)
        tools_postgre_restart.triggered.connect(lambda: (self.restartPostgreMenuItem.emit()))
        tools.addAction(tools_postgre_restart)
        tools_postgre_restart.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/start_server.png'))

        tools_postgre_stop = QAction(QtGui.QIcon(self.icon), "Stop Server", self)
        tools_postgre_stop.triggered.connect(lambda: (self.stopPostgreMenuItem.emit()))
        tools.addAction(tools_postgre_stop)
        tools_postgre_stop.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/stop_server.png'))

        tools.addSeparator()

        tools_pgadmin = QAction(QtGui.QIcon(self.icon), "pgAdmin III", self)
        tools_pgadmin.triggered.connect(lambda: self.startpgadmin())
        tools.addAction(tools_pgadmin)
        tools_pgadmin.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/cog.png'))

        traymenu.addSeparator()

        trayoption_quickconfig = QAction(QtGui.QIcon(self.icon), "Show Output/Config", self)
        trayoption_quickconfig.triggered.connect(lambda: self.showCommandLineWindowTryOption())
        traymenu.addAction(trayoption_quickconfig)
        trayoption_quickconfig.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/application_osx_terminal.png'))

        traymenu.addSeparator()

        trayoption_exit_entry = QAction(QtGui.QIcon(self.icon), "Exit", self)
        trayoption_exit_entry.triggered.connect(lambda: self.trayOptionExit())
        traymenu.addAction(trayoption_exit_entry)
        trayoption_exit_entry.setIcon(QtGui.QIcon(scriptpath + '/ressource/icons/cancel.png'))

        self.tray.showMessage('Odoo is Loading - Please wait','\nLeft click to open CommandWindow\nRight click to open Traymenu')

        self.showCommandLineWindow()

    def startpgadmin(self):
        os.startfile(scriptpath + '/Runtime/PostgreSQL/bin/pgAdmin3.exe')

    def showCommandLineWindow(self):
        self.ShowCommandLineWindow=CommandLineWindow(self)
        self.ShowCommandLineWindow.setWindowIcon(QtGui.QIcon(scriptpath + '/ressource/icons/icon.png'))
        self.ShowCommandLineWindow.show()
        if mainSettings['other']['minimizeToTray']:
            self.ShowCommandLineWindow.setVisible(False)
        else:
            self.ShowCommandLineWindow.setVisible(True)

    def toggleCommandLineWindow(self):
        if self.ShowCommandLineWindow.isMinimized():
            self.ShowCommandLineWindow.setVisible(True)
            self.ShowCommandLineWindow.showNormal()
            self.ShowCommandLineWindow.activateWindow()
        elif self.ShowCommandLineWindow.isVisible ():
            self.ShowCommandLineWindow.showNormal()
            self.ShowCommandLineWindow.setVisible(False)
        else:
            self.ShowCommandLineWindow.setVisible(True)
            self.ShowCommandLineWindow.showNormal()
            self.ShowCommandLineWindow.activateWindow()

    def showCommandLineWindowTryOption(self):
        self.ShowCommandLineWindow.setVisible(True)
        self.ShowCommandLineWindow.showNormal()
        self.ShowCommandLineWindow.activateWindow()

    def onTrayIconActivated(self,reason):
        if reason == QSystemTrayIcon.DoubleClick:
            pass

        if reason == QSystemTrayIcon.Trigger:
            self.toggleCommandLineWindow()

        if reason == QSystemTrayIcon.Context:
            pass

    def center(self):
        qr = self.frameGeometry()
        cp = QDesktopWidget().availableGeometry().center()
        qr.moveCenter(cp)
        self.move(qr.topLeft())

    def trayOptionExit(self,msgbox=True):
        if msgbox:
            quit_msg = "Stop all running Server ?"
            reply = QMessageBox.question(self.center(), 'Exit',
                quit_msg, QMessageBox.Yes, QMessageBox.No)
            if reply == QMessageBox.Yes:
                confirmed = True
            else:
                confirmed = False
        else:
            confirmed = True

        if confirmed:
            runtimeSettings["closeMainWindow"] = True
            self.ShowCommandLineWindow.setVisible(True)
            app = QApplication.instance()
            app.closeAllWindows()
            self.tray.hide()
            os._exit(1)


class CommandLineWindow(QMainWindow):
    def __init__(self, parent=None):
        super(CommandLineWindow, self).__init__(parent)

        parent.restartOdooMenuItem.connect(self.restartOdoo, QtCore.Qt.QueuedConnection)
        parent.stopOdooMenuItem.connect(self.stopOdoo, QtCore.Qt.QueuedConnection)
        parent.restartPostgreMenuItem.connect(self.restartPostgre, QtCore.Qt.QueuedConnection)
        parent.stopPostgreMenuItem.connect(self.stopPostgre, QtCore.Qt.QueuedConnection)

        loadUi(scriptpath + "/ressource/ui/CommandLineDialog.ui", self)

        if mainSettings['other']['theme'].lower() != 'default':
            if mainSettings['other']['theme'].lower() == 'steamlike':
                stylesheetFile = open(scriptpath + '/ressource/ui/steamlike.stylesheet', "r")
            elif mainSettings['other']['theme'].lower() == 'darkorange':
                stylesheetFile = open(scriptpath + '/ressource/ui/darkorange.stylesheet', "r")
            elif mainSettings['other']['theme'].lower() == 'maya':
                stylesheetFile = open(scriptpath + '/ressource/ui/maya.stylesheet', "r")
            stylesheet = stylesheetFile.read()
            self.setStyleSheet(stylesheet)
            stylesheetFile.close()

        if mainSettings['autostart']['autostartPostgre'] == True:
            self.processStartPostgre()
        if mainSettings['autostart']['autostartOdoo'] == True:
            self.processStartOdoo()


        #Set Values
        comboBox_config_other_themeIndex = self.comboBox_config_other_theme.findText(mainSettings['other']['theme'], QtCore.Qt.MatchFixedString)
        if comboBox_config_other_themeIndex >= 0:
            self.comboBox_config_other_theme.setCurrentIndex(comboBox_config_other_themeIndex)


        if mainSettings['other']['minimizeToTray']:
            self.checkBox_config_other_minimize_to_tray.setCheckState(QtCore.Qt.Checked)
        if mainSettings['other']['autostartBrowser']:
            self.checkBox_config_other_autostart_browser.setCheckState(QtCore.Qt.Checked)


        self.lineEdit_config_oddo_startpage.setText(str(mainSettings['odoo']['startpage']))
        self.lineEdit_config_oddo_pghost.setText(str(mainSettings['odoo']['postgreHost']))
        self.lineEdit_config_oddo_pgport.setText(str(mainSettings['odoo']['postgrePost']))
        self.lineEdit_config_oddo_pguser.setText(str(mainSettings['odoo']['postgreUser']))
        self.lineEdit_config_oddo_pgpassword.setText(str(mainSettings['odoo']['postgrePassword']))
        self.lineEdit_config_oddo_pgpath.setText(str(mainSettings['odoo']['postgrePath']))

        if mainSettings['autostart']['autostartOdoo']:
            self.checkBox_config_autostart_odoo.setCheckState(QtCore.Qt.Checked)
        if mainSettings['autostart']['autostartPostgre']:
            self.checkBox_config_autostart_postgre.setCheckState(QtCore.Qt.Checked)

        self.button_odoo_restart.setIcon(QtGui.QIcon(scriptpath + "/ressource/icons/start_server.png"))
        self.button_odoo_stop.setIcon(QtGui.QIcon(scriptpath + "/ressource/icons/stop_server.png"))
        self.button_postgre_restart.setIcon(QtGui.QIcon(scriptpath + "/ressource/icons/start_server.png"))
        self.button_postgre_stop.setIcon(QtGui.QIcon(scriptpath + "/ressource/icons/stop_server.png"))
        self.pushButton_config_save.setIcon(QtGui.QIcon(scriptpath + "/ressource/icons/disk.png"))
        self.button_odoo_browser.setIcon(QtGui.QIcon(scriptpath + "/ressource/icons/world.png"))

        self.tabWidget.setTabIcon(0, QtGui.QIcon(scriptpath + "/ressource/icons/icon.png"))
        self.tabWidget.setTabIcon(1, QtGui.QIcon(scriptpath + "/ressource/icons/postgresql.png"))
        self.tabWidget.setTabIcon(2, QtGui.QIcon(scriptpath + "/ressource/icons/cog.png"))
        self.tabWidget.setTabIcon(3, QtGui.QIcon(scriptpath + "/ressource/icons/lightbulb.png"))
        self.tabWidget.setIconSize(QtCore.QSize(12, 12))

        self.label_cybesystems_about.setAlignment(QtCore.Qt.AlignTop)

        self.label_cybesystems_logo.setPixmap(QtGui.QPixmap(scriptpath + "/ressource/icons/cybetech_background.png"))
        self.label_cybesystems_logo.setAlignment(QtCore.Qt.AlignRight)

    def checkCheckboxState(self, checkbox):
        if checkbox.checkState() == QtCore.Qt.Checked:
            return True
        else:
            return False

    @QtCore.pyqtSlot()
    def on_button_odoo_browser_clicked(self):
        webbrowser.open(mainSettings['odoo']['startpage'])

    @QtCore.pyqtSlot()
    def on_pushButton_config_save_clicked(self):
        #mainConfig
        mainSettings['other']['minimizeToTray'] = self.checkCheckboxState(self.checkBox_config_other_minimize_to_tray)
        mainSettings['other']['autostartBrowser'] = self.checkCheckboxState(self.checkBox_config_other_autostart_browser)
        mainSettings['other']['theme'] = self.comboBox_config_other_theme.currentText()

        mainSettings['autostart']['autostartOdoo'] = self.checkCheckboxState(self.checkBox_config_autostart_odoo)
        mainSettings['autostart']['autostartPostgre'] = self.checkCheckboxState(self.checkBox_config_autostart_postgre)

        mainSettings['odoo']['startpage'] = self.lineEdit_config_oddo_startpage.text()
        mainSettings['odoo']['postgreHost'] = self.lineEdit_config_oddo_pghost.text()
        mainSettings['odoo']['postgrePost'] = self.lineEdit_config_oddo_pgport.text()
        mainSettings['odoo']['postgreUser'] = self.lineEdit_config_oddo_pguser.text()
        mainSettings['odoo']['postgrePassword'] = self.lineEdit_config_oddo_pgpassword.text()
        mainSettings['odoo']['postgrePath'] = self.lineEdit_config_oddo_pgpath.text()
        writeMainSettings()

    def closeEvent( self, event):
        if runtimeSettings["closeMainWindow"] == True:
            try:
                self.processOdoo.terminate()
            except:
                pass
            self.processStopPostgre()
            try:
                self.processOdoo.kill()
                self.processOdoo.waitForFinished()
            except:
                pass
            self.textEdit_odoo.setText('Stopped.')
        else:
            event.ignore()
            self.setVisible(False)


    #############################
    # Start Odoo
    ##############################

    def readReady(self):
        print (self.processOdoo.readAllStandardOutput())

    def processStartOdoo(self):
        #arguments = QtCore.QMetaType.QStringList()
        argumentsOdoo = []
        shellOdoo = scriptpathWinSep + "\\Runtime\\Python27\\python.exe"
        argumentsOdoo.append(scriptpathWinSep + "\\Runtime\\Odoo\\odoo.py")
        #argumentsOdoo.append('--admin=admin')
        argumentsOdoo.append('--db_host=' + mainSettings['odoo']['postgreHost'])
        argumentsOdoo.append('--db_port=' + str(mainSettings['odoo']['postgrePost']))
        argumentsOdoo.append('--db_user=' + mainSettings['odoo']['postgreUser'])
        argumentsOdoo.append('--db_password=' + mainSettings['odoo']['postgrePassword'])
        argumentsOdoo.append('--pg_path=' + scriptpathWinSep + mainSettings['odoo']['postgrePath'])

        #To Start diffent Python Verison (in tis case 2.7) PYTHON_PATH needs to set to this installation
        os.environ["PYTHONPATH"] = scriptpathWinSep + "\\Runtime\\Python27"
        os.environ["PATH"] = scriptpathWinSep + "\\Runtime\\wkhtmltopdf\\bin"

        self.processOdoo = QtCore.QProcess( self)
        self.processOdoo.setWorkingDirectory(scriptpathWinSep + "\\Runtime\\Python27")
        self.processOdoo.setProcessChannelMode(QtCore.QProcess.MergedChannels)
        self.processOdoo.finished.connect(self.processFinishedShellOdoo)
        self.processOdoo.readyRead.connect(self.processOutputShellOdoo)
        self.processOdoo.start(shellOdoo, argumentsOdoo)
        if mainSettings['other']['autostartBrowser'] == True:
            webbrowser.open(mainSettings['odoo']['startpage'])

    def processFinishedShellOdoo( self, exitCode):
        print('Exit code = %d' % exitCode)
        if exitCode == 0:
            self.textEdit_odoo.insertPlainText('Command finished successfully.')
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)

    def processOutputShellOdoo( self):
        output = self.processOdoo.readAll()
        text = bytes(output)
        try:
            text = text.decode("UTF-8")
            self.textEdit_odoo.insertPlainText(text)
            self.textEdit_odoo.moveCursor( QtGui.QTextCursor.End)
        except:
            text = text.decode('latin-1')
            self.textEdit_odoo.insertPlainText(text)
            self.textEdit_odoo.moveCursor( QtGui.QTextCursor.End)

    def restartOdoo(self):
        try:
            self.processOdoo.terminate()
        except:
            pass
        try:
            self.processOdoo.kill()
            self.processOdoo.waitForFinished()
        except:
            pass
        self.textEdit_odoo.setText('Stopped.')
        self.processStartOdoo()

    def stopOdoo(self):
        try:
            self.processOdoo.terminate()
            self.processOdoo.kill()
            self.processOdoo.waitForFinished()
        except:
            pass
        self.textEdit_odoo.setText('Stopped.')

    @QtCore.pyqtSlot()
    def on_button_odoo_restart_clicked(self):
        self.restartOdoo()

    @QtCore.pyqtSlot()
    def on_button_odoo_stop_clicked(self):
        print("Stop Odoo")
        self.stopOdoo()

    #############################
    # Init PostgreSQL
    ##############################
    os.environ["PGSQL"] = scriptpathWinSep + "\\Apps\\PostgreSQL\\App\\PgSQL"
    os.environ["PGDATA"] =datapath + '\\PostgreSQL\\Data'
    os.environ["PGLOG"] = datapath + '\\PostgreSQL\\log.txt'
    os.environ["PGLOCALEDIR"] = scriptpathWinSep + "\\Runtime\\PostgreSQL\\share"
    os.environ["PGDATABASE"] = "postgres"
    os.environ["PGUSER"] = "postgres"


    def firstRunPostgre(self):
        #Arguments dont works corrent with QProcess
        os.environ["PATH"] = scriptpathWinSep + "\\Runtime\\PostgreSQL\\bin"

        shellPgInit = scriptpathWinSep + '\\Runtime\\PostgreSQL\\bin\\initdb.exe'
        shellPgInit += ' -U ' + "postgres"
        shellPgInit += ' -A trust'
        shellPgInit += ' -E utf8'
        shellPgInit += ' --locale=C'

        self.processPgInit = QtCore.QProcess( self)
        self.processPgInit.setProcessChannelMode(QtCore.QProcess.MergedChannels)
        self.processPgInit.finished.connect(self.processFinishedShellPgInit)
        self.processPgInit.readyRead.connect(self.processOutputShellPgInit)
        self.processPgInit.start(shellPgInit)

    def processFinishedShellPgInit( self, exitCode):
        print('Exit code = %d' % exitCode)
        if exitCode == 0:
            self.textEdit_postgre.insertPlainText('---------------------------------')
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)
            self.textEdit_postgre.insertPlainText('Init finished - Starting Postgres')
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)
            self.textEdit_postgre.insertPlainText('---------------------------------')
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)
            self.processStartPostgre()
            time.sleep(3)
            self.runPostgreCommand()

    def processOutputShellPgInit( self):
        output = self.processPgInit.readAll()
        text = bytes(output)
        try:
            text = text.decode("UTF-8")
            self.textEdit_postgre.insertPlainText(text)
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)
        except:
            text = text.decode('latin-1')
            self.textEdit_postgre.insertPlainText(text)
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)

    #############################
    # Run PostgreSQL Command
    ##############################

    def runPostgreCommand(self):
        os.environ["PATH"] = scriptpathWinSep + "\\Runtime\\PostgreSQL\\bin"

        shellPgCommand = scriptpathWinSep + '\\Runtime\\PostgreSQL\\bin\\psql.exe'
        shellPgCommand += ' --username=' + "postgres"
        shellPgCommand += ' -c "CREATE USER odoo WITH PASSWORD \'odoo\' SUPERUSER;"'

        self.processPgCommand = QtCore.QProcess( self)
        self.processPgCommand.setProcessChannelMode(QtCore.QProcess.MergedChannels)
        self.processPgCommand.finished.connect(self.processFinishedShellPgCommand)
        self.processPgCommand.readyRead.connect(self.processOutputShellPgCommand)
        self.processPgCommand.start(shellPgCommand)

    def processFinishedShellPgCommand( self, exitCode):
        print('Exit code = %d' % exitCode)
        if exitCode == 0:
            self.textEdit_postgre.insertPlainText('---------------------------------')
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)
            self.textEdit_postgre.insertPlainText('Command finished')
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)
            self.textEdit_postgre.insertPlainText('---------------------------------')
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)

    def processOutputShellPgCommand( self):
        output = self.processPgCommand.readAll()
        text = bytes(output)
        try:
            text = text.decode("UTF-8")
            self.textEdit_postgre.insertPlainText(text)
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)
        except:
            text = text.decode('latin-1')
            self.textEdit_postgre.insertPlainText(text)
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)

    #############################
    # Start PostgreSQL
    ##############################

    def processStartPostgre(self):
        if not os.path.isdir(scriptpathParentFolder + '\\Data\\PostgreSQL'):
            print("Init Database")
            self.firstRunPostgre()
        else:
            #Arguments dont works corrent with QProcess
            os.environ["PATH"] = scriptpathWinSep + "\\Runtime\\PostgreSQL\\bin"
            shellPgStart = scriptpathWinSep + '\\Runtime\\PostgreSQL\\bin\\pg_ctl.exe'
            shellPgStart += ' -D ' + datapath + '\\PostgreSQL\\Data'
            shellPgStart += ' -l ' + datapath + '\\PostgreSQL\\log.txt'
            shellPgStart += ' -w start'

            self.processPgStart = QtCore.QProcess( self)
            self.processPgStart.setProcessChannelMode(QtCore.QProcess.MergedChannels)
            self.processPgStart.finished.connect(self.processFinishedShellPgStart)
            self.processPgStart.readyRead.connect(self.processOutputShellPgStart)
            self.processPgStart.start(shellPgStart)

    def processFinishedShellPgStart( self, exitCode):
        print('Exit code = %d' % exitCode)
        if exitCode == 0:
            self.textEdit_postgre.insertPlainText('Command finished successfully.')
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)

    def processOutputShellPgStart( self):
        output = self.processPgStart.readAll()
        text = bytes(output)
        try:
            text = text.decode("UTF-8")
            self.textEdit_postgre.insertPlainText(text)
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)
        except:
            text = text.decode('latin-1')
            self.textEdit_postgre.insertPlainText(text)
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)

    ##############################
    # Stop PostgreSQL
    ##############################

    def processStopPostgre(self):
        shellPgStop = scriptpathWinSep + '\\Runtime\\PostgreSQL\\bin\\pg_ctl.exe'
        shellPgStop += ' -D ' + datapath + '\\PostgreSQL\\data'
        shellPgStop += ' stop'
        #Force stopping
        if self.checkBox_postgre_force_shutdown.checkState() == QtCore.Qt.Checked:
            shellPgStop += ' -m immediate'


        self.processPgStop = QtCore.QProcess( self)
        self.processPgStop.setProcessChannelMode(QtCore.QProcess.MergedChannels)
        self.processPgStop.finished.connect(self.processfinishedPgStop)
        self.processPgStop.readyRead.connect(self.processoutputPgStop)
        self.processPgStop.start(shellPgStop)

    def processfinishedPgStop( self, exitCode):
        print('Exit code = %d' % exitCode)
        if exitCode == 0:
            self.textEdit_postgre.insertPlainText('Command finished successfully.')
            self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)

    def processoutputPgStop( self):
        output = self.processPgStop.readAll()
        text = bytes(output)
        text = text.decode("UTF-8")
        self.textEdit_postgre.insertPlainText(text)
        self.textEdit_postgre.moveCursor( QtGui.QTextCursor.End)

    ##############################
    # PostgreSQL GUI functions
    ##############################

    def restartPostgre(self):
        if os.path.isdir(scriptpathParentFolder + '\\Data\\PostgreSQL'):
            self.processStopPostgre()
            time.sleep(3)
        self.processStartPostgre()

    def stopPostgre(self):
        self.processStopPostgre()
        self.processPgStart.terminate()
        self.processPgStart.kill()
        self.textEdit_postgre.setText('Stopped.')
        self.processPgStart.waitForFinished()

    @QtCore.pyqtSlot()
    def on_button_postgre_restart_clicked(self):
        print("Restart Postgres")
        self.restartPostgre()

    @QtCore.pyqtSlot()
    def on_button_postgre_stop_clicked(self):
        print("Stop Postgres")
        self.stopPostgre()

if __name__ == '__main__':
    app = QApplication.instance()
    if app == None:
        app = QApplication(sys.argv)

    app.setQuitOnLastWindowClosed(False)
    w = MainWindow()
    w.setWindowFlags(QtCore.Qt.Tool)


    sys.exit(app.exec_())
