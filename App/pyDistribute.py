import sys, os, imp, configparser, shutil
scriptpath =  os.path.dirname(os.path.realpath(__file__))

###################################################################################################
# Set Version - Make sure you use X.X.X.X format -> Without it NSIS Builder dont work
###################################################################################################
version = '1.1.0.0'
copyRuntime = True

###################################################################################################
# Set path to pyDistribute and load with imp
###################################################################################################
# Set here your PyDistribute Folder - I use relative path to my projects -> Absolute path is OK too
pyDistributeFolder = '../../PyDistribute/pyDistribute.py'
if not os.path.isfile(pyDistributeFolder):
    print("pyDistribute Folder ist wrong" + pyDistributeFolder + '\\pyDistribute.py' + ' not found')
    sys.exit()
pyDistribute = imp.load_source('pyDistribute', pyDistributeFolder)

###################################################################################################
# Set default config from json file
###################################################################################################
config = pyDistribute.getConfig(scriptpath + '\\' + 'pyDistribute.json')

###################################################################################################
# Update AppInfo Version and add Version flag to NSIS Launcher
# Any config that is not set here can be added or set in json file
###################################################################################################
appinfo = configparser.ConfigParser()
appinfo.optionxform=str
appinfo.read("AppInfo/appinfo.ini")
appinfo.set('Version', 'DisplayVersion', version)
with open("AppInfo/appinfo.ini", 'w') as configfile:
    appinfo.write(configfile)

config['buildConfig']['pythonExeName'] = "Odoo.exe"
config['buildConfig']['pythonWExeName'] = "OdooW.exe"
config['buildConfig']['startFile'] = "OdooLauncher.py"
config['nsisConfig']['FileDescription'] = "OdooPortable"
config['nsisConfig']['FileVersion'] = version
config['nsisConfig']['ProductVersion'] = version
config['nsisConfig']['OutFileName'] = "OdooPortable.exe"
config['nsisConfig']['OutConsoleFileName'] = "OdooPortable-Console.exe"

###################################################################################################
# Add Custom Files
###################################################################################################
config['packagesPyQt5Array'].append("icudt53.dll")
config['packagesPyQt5Array'].append("icuin53.dll")
config['packagesPyQt5Array'].append("icuuc53.dll")
config['packagesPyQt5Array'].append("libeay32.dll")
config['packagesPyQt5Array'].append("ssleay32.dll")
config['packagesPyQt5Array'].append("qt5core.dll")
config['packagesPyQt5Array'].append("qt5gui.dll")
config['packagesPyQt5Array'].append("qt5widgets.dll")
config['packagesPyQt5Array'].append("Qt.pyd")
config['packagesPyQt5Array'].append("QtCore.pyd")
config['packagesPyQt5Array'].append("QtGui.pyd")
config['packagesPyQt5Array'].append("QtWidgets.pyd")
config['packagesPyQt5Array'].append("QtNetwork.pyd")
config['packagesPyQt5Array'].append("Qt5Network.dll")
config['packagesPyQt5Array'].append("SSLEAY32.dll")
pyDistribute.addCustomLibrarys(config, scriptpath + '/Lib/dict4ini')

shutil.copytree(scriptpath + '\\ressource', config['runtime']['releaseFolder'] + '\\App\\Ressource')

if copyRuntime == True:
    print("############################################################################")
    print("# Copy Runtime Files - Please wait...")
    print("# If you get a copy error on node.js your path is too long (Windows sucks^^)")
    print("############################################################################")
    if not os.path.isdir(scriptpath+ '\\RuntimeClean'):
        print("RuntimeClean Folder not found - Fallback to Runtime")
        shutil.copytree(scriptpath + '\\Runtime', config['runtime']['releaseFolder'] + '\\App\\Runtime')
    else:
        shutil.copytree(scriptpath + '\\RuntimeClean', config['runtime']['releaseFolder'] + '\\App\\Runtime')

###################################################################################################
# Create App
###################################################################################################
pyDistribute.cyDistribute(config)


