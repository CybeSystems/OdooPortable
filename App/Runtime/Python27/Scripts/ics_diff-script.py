#!D:\Python27\python.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'vobject==0.6.6','console_scripts','ics_diff'
__requires__ = 'vobject==0.6.6'
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.exit(
        load_entry_point('vobject==0.6.6', 'console_scripts', 'ics_diff')()
    )
