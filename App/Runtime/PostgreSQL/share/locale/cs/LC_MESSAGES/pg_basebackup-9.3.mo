��    �      �  �   <	      P     Q     g  !   z  
   �  -   �     �  3   �  K     <   g  >   �  3   �  V     <   n  ?   �  M   �  k   9  J   �  Y   �  +   J  B   v  *   �  8   �  5     r   S  1   �  3   �  K   ,  -   x  F   �  \   �  P   J  4   �  8   �  4   	  1   >  @   p  1   �     �  (     '   ,  &   T  (   {  -   �  "   �      �  $     ,   ;  +   h  .   �  (   �  #   �  5     9   F  4   �  7   �  =   �  "   +  &   N  #   u  /   �  >   �  Y     &   b  &   �  2   �  1   �  0        F     e  8   �  3   �  2   �      $  '   E  .   m  +   �  #   �  A   �  2   .  &   a  &   �  /   �  +   �  4     /   @  !   p  1   �  )   �  (   �  2     3   J  0   ~  %   �  +   �       2        F  ,   c  ,   �  #   �  W   �  9   9   A   s   #   �   9   �      !  !   1!  &   S!  A   z!  !   �!  "   �!  9   "  1   ;"  ,   m"     �"  '   �"  D   �"  8   #  6   S#     �#  E   �#  G   �#  z   1$  c   �$  %   %  2   6%  6   i%  #   �%  %   �%  R   �%  ,   =&  4   j&  >   �&  o   �&  k   N'  4   �'  %   �'  (   (  ;   >(  
   z(  &   �(     �(  /   �(     �(  /   �(  �  #)     �*     +     +     6+  5   G+     }+  A   �+  S   �+  ;   $,  G   `,  :   �,  ]   �,  M   A-  D   �-  P   �-  c   %.  M   �.  b   �.  +   :/  Q   f/  4   �/  L   �/  7   :0     r0  ;   �0  4   .1  O   c1  2   �1  j   �1  �   Q2  w   �2  9   S3  ;   �3  @   �3  3   
4  @   >4  8   4  (   �4  /   �4  -   5  /   ?5  -   o5  2   �5  $   �5  !   �5  %   6  +   =6  +   i6  2   �6  (   �6  $   �6  5   7  9   L7  9   �7  4   �7  @   �7  *   68  &   a8  '   �8  >   �8  E   �8  j   59  '   �9  '   �9  9   �9  9   *:  6   d:      �:  $   �:  =   �:  =   ;  ?   ];     �;  #   �;  (   �;  /   	<  '   9<  J   a<  5   �<  (   �<  .   =  /   :=  ,   j=  ?   �=  <   �=  )   >  <   >>  5   {>  6   �>  0   �>  :   ?  5   T?  %   �?  1   �?     �?  3   �?  $   %@  -   J@  4   x@  %   �@  ^   �@  A   2A  F   tA  #   �A  A   �A  !   !B  .   CB  /   rB  A   �B  -   �B  $   C  M   7C  9   �C  /   �C     �C  /   D  Q   7D  I   �D  ?   �D     E  R   ,E  S   E  �   �E  h   aF  %   �F  9   �F  9   *G  -   dG  %   �G  V   �G  %   H  G   5H  I   }H  �   �H  z   LI  8   �I  )    J  *   *J  A   UJ     �J  )   �J     �J  /   �J     K  .   K        �   I   b          )             8           �   -   d   o   W          f   ?   M   @   �   	   q   �   (       l                      n           N   =         `      4   C   U   *         �   A              �           j   �   y   �   2   E   X   "           t   +           }   T       i       V                  v   g   7      �          ^   3   �   �              k       p   ,               R   %       F      [   K       ;       D       H   x   1   ]   �   #   c   z       e   \   G   9   0          �       S      Y           
   :              5   �   �          '      |   �             m   Q   >       J   P   a       r   6   ~   $      L   O   {   B   .   Z   h       �          /   w   !      s   �   u      �       <       &   _           
Connection options:
 
General options:
 
Options controlling the output:
 
Options:
 
Report bugs to <pgsql-bugs@postgresql.org>.
   %s [OPTION]...
   -?, --help             show this help, then exit
   -D, --directory=DIR    receive transaction log files into this directory
   -D, --pgdata=DIRECTORY receive base backup into directory
   -F, --format=p|t       output format (plain (default), tar)
   -P, --progress         show progress information
   -R, --write-recovery-conf
                         write recovery.conf after backup
   -U, --username=NAME    connect as specified database user
   -V, --version          output version information, then exit
   -W, --password         force password prompt (should happen automatically)
   -X, --xlog-method=fetch|stream
                         include required WAL files with specified method
   -Z, --compress=0-9     compress tar output with given compression level
   -c, --checkpoint=fast|spread
                         set fast or spread checkpointing
   -d, --dbname=CONNSTR   connection string
   -h, --host=HOSTNAME    database server host or socket directory
   -l, --label=LABEL      set backup label
   -n, --no-loop          do not loop on connection lost
   -p, --port=PORT        database server port number
   -s, --status-interval=INTERVAL
                         time between status packets sent to server (in seconds)
   -v, --verbose          output verbose messages
   -w, --no-password      never prompt for password
   -x, --xlog             include required WAL files in backup (fetch mode)
   -z, --gzip             compress tar output
 %*s/%s kB (%d%%), %d/%d tablespace %*s/%s kB (%d%%), %d/%d tablespaces %*s/%s kB (%d%%), %d/%d tablespace (%s%-*.*s) %*s/%s kB (%d%%), %d/%d tablespaces (%s%-*.*s) %*s/%s kB (100%%), %d/%d tablespace %*s %*s/%s kB (100%%), %d/%d tablespaces %*s %s receives PostgreSQL streaming transaction logs.

 %s takes a base backup of a running PostgreSQL server.

 %s: COPY stream ended before last file was finished
 %s: WAL streaming can only be used in plain mode
 %s: can only write single tablespace to stdout, database has %d
 %s: cannot specify both --xlog and --xlog-method
 %s: child %d died, expected %d
 %s: child process did not exit normally
 %s: child process exited with error %d
 %s: child thread exited with error %u
 %s: could not access directory "%s": %s
 %s: could not close compressed file "%s": %s
 %s: could not close file "%s": %s
 %s: could not connect to server
 %s: could not connect to server: %s
 %s: could not create background process: %s
 %s: could not create background thread: %s
 %s: could not create compressed file "%s": %s
 %s: could not create directory "%s": %s
 %s: could not create file "%s": %s
 %s: could not create pipe for background process: %s
 %s: could not create symbolic link from "%s" to "%s": %s
 %s: could not create timeline history file "%s": %s
 %s: could not determine seek position in file "%s": %s
 %s: could not determine server setting for integer_datetimes
 %s: could not fsync file "%s": %s
 %s: could not get COPY data stream: %s %s: could not get backup header: %s %s: could not get child thread exit status: %s
 %s: could not get transaction log end position from server: %s %s: could not identify system: got %d rows and %d fields, expected %d rows and %d fields
 %s: could not initiate base backup: %s %s: could not open directory "%s": %s
 %s: could not open timeline history file "%s": %s
 %s: could not open transaction log file "%s": %s
 %s: could not pad transaction log file "%s": %s
 %s: could not parse file mode
 %s: could not parse file size
 %s: could not parse next timeline's starting point "%s"
 %s: could not parse transaction log file name "%s"
 %s: could not parse transaction log location "%s"
 %s: could not read COPY data: %s %s: could not read from ready pipe: %s
 %s: could not receive data from WAL stream: %s %s: could not rename file "%s" to "%s": %s
 %s: could not rename file "%s": %s
 %s: could not seek to beginning of transaction log file "%s": %s
 %s: could not send command to background pipe: %s
 %s: could not send copy-end packet: %s %s: could not send feedback packet: %s %s: could not send replication command "%s": %s %s: could not set compression level %d: %s
 %s: could not set permissions on directory "%s": %s
 %s: could not set permissions on file "%s": %s
 %s: could not stat file "%s": %s
 %s: could not stat transaction log file "%s": %s
 %s: could not wait for child process: %s
 %s: could not wait for child thread: %s
 %s: could not write %u bytes to WAL file "%s": %s
 %s: could not write timeline history file "%s": %s
 %s: could not write to compressed file "%s": %s
 %s: could not write to file "%s": %s
 %s: directory "%s" exists but is not empty
 %s: disconnected
 %s: disconnected; waiting %d seconds to try again
 %s: final receive failed: %s %s: finished segment at %X/%X (timeline %u)
 %s: got WAL data offset %08x, expected %08x
 %s: incompatible server version %s
 %s: incompatible server version %s; streaming is only supported with server version %s
 %s: integer_datetimes compile flag does not match server
 %s: invalid checkpoint argument "%s", must be "fast" or "spread"
 %s: invalid compression level "%s"
 %s: invalid output format "%s", must be "plain" or "tar"
 %s: invalid port number "%s"
 %s: invalid status interval "%s"
 %s: invalid tar block header size: %d
 %s: invalid xlog-method option "%s", must be "fetch" or "stream"
 %s: no data returned from server
 %s: no target directory specified
 %s: no transaction log end position returned from server
 %s: not renaming "%s%s", segment is not complete
 %s: only tar mode backups can be compressed
 %s: out of memory
 %s: received interrupt signal, exiting
 %s: received transaction log record for offset %u with no file open
 %s: replication stream was terminated before stop point
 %s: segment file "%s" has incorrect size %d, skipping
 %s: select() failed: %s
 %s: server reported unexpected history file name for timeline %u: %s
 %s: server reported unexpected next timeline %u, following timeline %u
 %s: server returned unexpected response to BASE_BACKUP command; got %d rows and %d fields, expected %d rows and %d fields
 %s: server stopped streaming timeline %u at %X/%X, but reported next timeline %u to begin at %X/%X
 %s: starting background WAL receiver
 %s: starting log streaming at %X/%X (timeline %u)
 %s: starting timeline %u is not present in the server
 %s: streaming header too small: %d
 %s: switched to timeline %u at %X/%X
 %s: system identifier does not match between base backup and streaming connection
 %s: this build does not support compression
 %s: too many command-line arguments (first is "%s")
 %s: transaction log file "%s" has %d bytes, should be 0 or %d
 %s: unexpected response to TIMELINE_HISTORY command: got %d rows and %d fields, expected %d rows and %d fields
 %s: unexpected result set after end-of-timeline: got %d rows and %d fields, expected %d rows and %d fields
 %s: unexpected termination of replication stream: %s %s: unrecognized link indicator "%c"
 %s: unrecognized streaming header: "%c"
 %s: waiting for background process to finish streaming ...
 Password:  Try "%s --help" for more information.
 Usage:
 cannot duplicate null pointer (internal error)
 out of memory
 transaction log start point: %s on timeline %u
 Project-Id-Version: pg_basebackup-cs (PostgreSQL 9.3)
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2013-09-23 20:18+0000
PO-Revision-Date: 2013-12-01 20:46-0500
Last-Translator: Tomas Vondra <tv@fuzzy.cz>
Language-Team: Czech <info@cspug.cx>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
X-Generator: Lokalize 1.5
 
Volby spojení:
 
Obecné volby:
 
Volby ovlivňující výstup:
 
Obecné volby:
 
Chyby hlaste na adresu <pgsql-bugs@postgresql.org>.
   %s [VOLBA]...
   -?, --help                ukaž tuto nápovědu, potom skonči
   -D, --directory=DIR    soubory transakčního logu ukládej do tohoto adresáře
   -D, --pgdata=ADRESÁŘ   ulož base backup do adresáře
   -F, --format=p|t         výstupní formát (plain (výchozí), tar)
   -P, --progress           zobrazuj informace o průběhu
   -R, --write-recovery-conf
                         po zálohování zapíše recovery.conf
   -U, --username=JMÉNO      připoj se jako uvedený databázový uživatel
   -V, --version             vypiš informace o verzi, potom skonči
   -W, --password           vynuť dotaz na heslo (mělo by se dít automaticky)
   -X, --xlog-method=fetch|stream
                         zahrne potřebné WAL soubory do zálohy
   -Z, --compress=0-9       komprimuj výstup taru zvolenou úrovní komprese
   -c, --checkpoint=fast|spread
                           nastavte fast nebo spread checkpointing
   -d, --dbname=CONNSTR   connection string
   -h, --host=HOSTNAME      host databázového serveru nebo adresář se sockety
   -l, --label=NÁZEV        nastav jmenovku zálohy
   -n, --no-loop          neopakovat pokus o spojení v případě selhání
   -p, --port=PORT          port databázového serveru
   -s, --status-interval=INTERVAL
                         čas mezi zasíláním packetů se stavem na server (ve vteřinách)
   -v, --verbose            zobrazuj podrobnější zprávy
   -w, --no-password        nikdy se neptej na heslo
   -x, --xlog             zahrne potřebné WAL soubory do zálohy (fetch mód)
   -z, --gzip               komprimuj výstup taru
 %*s/%s kB (%d%%), %d/%d tablespace %*s/%s kB (%d%%), %d/%d tablespaces %*s/%s kB (%d%%), %d/%d tablespaces %*s/%s kB (%d%%), %d/%d tablespace (%s%-*.*s) %*s/%s kB (%d%%), %d/%d tablespace (%s%-*.*s) %*s/%s kB (%d%%), %d/%d tablespace (%s%-*.*s) %*s/%s kB (100%%), %d/%d tablespace %*s %*s/%s kB (100%%), %d/%d tablespacy %*s %*s/%s kB (100%%), %d/%d tablespacy %*s %s přijímá PostgreSQL streamované transakční logy

 %s vytvoří base backup běžícího PostgreSQL serveru.

 %s: COPY stream skončil před dokončením posledního souboru
 %s: WAL streaming lze použít pouze v plain módu
 %s: na stdout lze zapsat jen jeden tablespace, databáze má %d
 %s: volby --xlog a --xlog-method nelze zadat společně
 %s: potomek %d zemřel, očekáváno %d
 %s: podřízený proces neskončil standardně
 %s: podřízený proces skončil s chybou %d
 %s: podřízené vlákno skončilo s chybou %u
 %s: nelze přístoupit k adresáři "%s": %s
 %s: nelze uzavřít komprimovaný soubor "%s": %s
 %s: nelze uzavřít soubor "%s": %s
 %s: nelze se připojit k serveru
 %s: nelze se připojit k serveru: %s
 %s: nelze vytvořit background procesy: %s
 %s: nelze vytvořit background vlákno: %s
 %s: nelze vytvořit komprimovaný soubor "%s": %s
 %s: nelze vytvořít adresář "%s": %s
 %s: nelze vytvořit soubor "%s": %s
 %s: nelze vytvořit roury pro background procesy: %s
 %s: nelze vytvořit symbolický odkaz z "%s" na "%s": %s
 %s: nelze vytvořit soubor s timeline historií "%s": %s
 %s: nelze určit pozici pro seek v souboru "%s": %s
 %s: nelze zjistit nastavení volby integer_datetimes na serveru
 %s: nelze provést fsync souboru "%s": %s
 %s: nelze získat COPY data stream: %s %s: nelze získat hlavičku zálohy: %s %s: nelze získat návratový kód podřízeného vlákna: %s
 %s: ze serveru nelze získat koncovou pozici v transakčním logu: %s %s: nelze identifikovat systém, načteno %d řádek a %d položek, očekáváno %d řádek a %d položek
 %s: nelze inicializovat base backup: %s %s: nelze otevřít adresář "%s": %s
 %s: nelze otevřít soubor s historií timeline "%s": %s
 %s: nelze otevřít souboru transakčního logu "%s": %s
 %s: nelze doplnit soubor transakčního logu "%s": %s
 %s: nelze načíst mód souboru
 %s: nelze načíst velikost souboru
 %s: nelze naparsovat počáteční bod další timeline "%s"
 %s: nelze naparsovat jméno souboru transakčního logu "%s"
 %s: nelze naparsovat koncovou pozici v transakčním logu "%s"
 %s: nelze číst COPY data: %s %s: nelze číst z ready roury: %s
 %s: nelze získat data z WAL streamu: %s %s: nelze přejmenovat soubor "%s" na "%s": %s
 %s: nelze přejmenovat soubor "%s": %s
 %s: nelze skočit zpět na začátek souboru transakčního logu "%s": %s
 %s: nelze zaslat příkaz přes background rouru: %s
 %s: nelze zaslat ukončovací packet: %s %s: nelze zaslat packet se zpětnou vazbou: %s %s: nelze zaslat replikační příkaz "%s": %s %s: nelze nastavit úroveň komprese %d: %s
 %s: nelze nastavit přístupová práva na adresáři "%s": %s
 %s: nelze nastavit přístupová práva na souboru "%s": %s
 %s: nelze načíst stav souboru "%s": %s
 %s: nelze udělat stat souboru transakčního logu "%s": %s
 %s: nelze počkat na podřízený (child) proces: %s
 %s: nelze počkat na podřízené (child) vlákno: %s
 %s: nelze zapsat %u bytů do WAL souboru %s: %s
 %s: nelze zapsat do souboru s timeline historií "%s": %s
 %s: nelze zapsat do komprimovaného souboru "%s": %s
 %s: nelze zapsat do souboru "%s": %s
 %s: adresář "%s" existuje, ale není prázdný
 %s: odpojeno.
 %s: odpojeno; čekám %d vteřin pro další pokus
 %s: závěrečný receive selhal: %s %s: dokončen segment na %X/%X (timeline %u)
 %s: získán WAL data offset %08x, očekáván %08x
 %s: nekompatibilní verze serveru %s
 %s: nekompatibilní verze serveru %s; streaming je podporování pouze se serverem version %s
 %s: integer_datetimes přepínač kompilace neodpovídá serveru
 %s: chybný checkpoint argument "%s", musí být "fast" nebo "spread"
 %s: chybná úroveň komprese "%s"
 %s: chybný formát výstupu "%s", musí být "plain" nebo "tar"
 %s: neplatné číslo portu "%s"
 %s: neplatný interval zasílání stavu "%s"
 %s: neplatná velikost hlavičky tar bloku: %d
 %s: neplatná xlog-metoda "%s", musí být "fetch" nebo "stream"
 %s: ze serveru nebyla vrácena žádná data
 %s: nebyl zadán cílový adresář
 %s: ze serveru nebyla vrácena žádná koncová pozice v transakčním logu
 %s: nepřejmenovávám "%s%s", segment není kompletní.
 %s: pouze tar zálohy mohou být komprimované
 %s: nedostatek paměti
 %s: přijat signál k přerušení, ukončuji.
 %s: přijat záznam z transakčního logu pro offset %u bez otevřeného souboru
 %s: replikační stream byl ukončen před bodem zastavení (stop point)
 %s: segment soubor "%s" má neplatnou velikost %d, přeskakuji
 %s: select() selhal: %s
 %s: server ohlásil neočekávané jméno souboru s historií pro timeline %u: %s
 %s: server ohlásil neočekávanou další timeline %u, následující timeline %u
 %s: server vrátil neočekávanou odpověď na BASE_BACKUP příkaz; přišlo %d řádeka %d položek, ořekáváno %d řádek a %d položek
 %s: server přestal streamovat timeline %u at %X/%X, ale začátek další timelineoznámil %u na %X/%X
 %s: starting background WAL receiver
 %s: začínám streamování logu na %X/%X (timeline %u)
 %s: počáteční timeline %u není přitomna na serveru
 %s: hlavička streamu je příliš malá: %d
 %s: přepnuto na timeline %u v %X/%X
 %s: identifikátor systému mezi base backupem a streamovacím spojením neodpovídá
 %s: tento build nepodporuje kompresi
 %s: příliš mnoho argumentů v příkazové řádce (první je "%s")
 %s: soubor transakčního logu "%s" má %d bytů, měl by mít 0 nebo %d
 %s: neočekávaná odpověď na TIMELINE_HISTORY příkaz: načteno %d řádek a %d položek, očekáváno %d řádek a %d položek
 %s: neočekávaný výsledek po konci timeline: získáno %d řádek a %d položek, očekáváno %d řádek a %d položek
 %s: neočekávané ukončení replikačního streamu: %s %s: nerozpoznaný indikátor odkazu "%c"
 %s: nerozpoznaná hlavička streamu: "%c"
 %s: čekám na background proces pro ukočení streamování ...
 Heslo:  Zkuste "%s --help" pro více informací.
 Použití:
 nelze duplikovat null pointer (interní chyba)
 nedostatek paměti
 transaction log start point: %s v timeline %u
 