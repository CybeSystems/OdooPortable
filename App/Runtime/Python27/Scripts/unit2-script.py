#!D:\Python27\python.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'unittest2==0.5.1','console_scripts','unit2'
__requires__ = 'unittest2==0.5.1'
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.exit(
        load_entry_point('unittest2==0.5.1', 'console_scripts', 'unit2')()
    )
