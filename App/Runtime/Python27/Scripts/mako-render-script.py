#!D:\Python27\python.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'Mako==1.0.0','console_scripts','mako-render'
__requires__ = 'Mako==1.0.0'
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.exit(
        load_entry_point('Mako==1.0.0', 'console_scripts', 'mako-render')()
    )
