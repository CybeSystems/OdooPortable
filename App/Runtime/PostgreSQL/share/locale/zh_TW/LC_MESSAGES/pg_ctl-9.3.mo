Þ          ,  ­   <      ð
      ñ
       &   $     K     k  -        ¸     Î  =   á          <     \     é  a   	  K   k     ·  A   Ò  !     3   6  ?   j  ?   ª  H   ê  D   3  C   x  E   ¼  ?     >   B  9     B   »  <   þ     ;  0   À  F   ñ  >   8  8   w  I   °  %   ú  2      O   S  7   £     Û     â     ë     ý  -     C   Å  >   	  !   H  C   j  y   ®  9   (  D   b  C   §  D   ë  >   0  A   o  2   ±  *   ä  /     %   ?  /   e  #        ¹  3   ×  2     1   >  0   p  ,   ¡  .   Î  3   ý  -   1  0   _  5     :   Æ  1     *   3  "   ^  $     J   ¦     ñ       3   $  0   X            !   »  $   Ý        -   #  =   Q  4     %   Ä  $   ê  "     !   2  F   T  u     F        X  7   l  )   ¤  k   Î  `   :   %      &   Á      è   d   ð      U!  &   t!  0   !  .   Ì!  )   û!  )   %"  "   O"      r"  (   "     ¼"  !   ×"     ù"     #     *#     <#     R#     c#     s#     #     #  "   ¬#     Ï#  ³  î#  %   ¢%     È%      Ú%  $   û%      &  0   ?&     p&     &  A   &     Ú&  %   ù&     '  $   º'  f   ß'  O   F(     (  G   ¶(  "   þ(  8   !)  8   Z)  6   )  G   Ê)  ?   *  >   R*  @   *  /   Ò*  9   +  ,   <+  H   i+  <   ²+     ï+  )   u,  A   ,  >   á,  ,    -  7   M-      -  !   ¦-  H   È-  0   .     B.     K.     T.     c.  !    /  7   "/  3   Z/     /  P   ©/  y   ú/  8   t0  H   ­0  N   ö0  N   E1  G   1  I   Ü1  )   &2     P2  *   n2  "   2  *   ¼2      ç2     3  )   %3  )   O3  +   y3  1   ¥3  *   ×3  +   4  3   .4  +   b4  *   4  *   ¹4  )   ä4  )   5     85  $   V5      {5  0   5     Í5      è5  2   	6  )   <6     f6     {6  $   6      ¸6     Ù6  3   ó6  7   '7  -   _7  "   7  "   °7  "   Ó7  "   ö7  =   8  Q   W8  :   ©8     ä8  :   9  "   =9  g   `9  W   È9      :  )   =:     g:  a   v:     Ø:     ò:  $   ;     6;     U;     r;     ;     ª;     Ã;     ã;     ü;     <     0<     J<     ^<     u<     <     <     ±<     Å<     ß<     þ<     9   D   Z      y   ^   Y       0       R   N   <   !   }   (       o   7          	          ]   \       W   [   H   t          4                   j   ,   G       s           w       S   P      ~   `                    X   8   c      J   u   z   _   m   V      =         b      '   F   M          g   O   6   h   x       |          1      l       -   a   r   )          ?   *   #   e      ;           Q              v   
      5                  B       f       i   3   A   p           $   L       n          I   %               +   .   &          k   2   d   q              K      >   E                    /   "   @   T   U       C           {       :    
Allowed signal names for kill:
 
Common options:
 
Options for register and unregister:
 
Options for start or restart:
 
Options for stop or restart:
 
Report bugs to <pgsql-bugs@postgresql.org>.
 
Shutdown modes are:
 
Start types are:
   %s init[db]               [-D DATADIR] [-s] [-o "OPTIONS"]
   %s kill    SIGNALNAME PID
   %s promote [-D DATADIR] [-s]
   %s register   [-N SERVICENAME] [-U USERNAME] [-P PASSWORD] [-D DATADIR]
                    [-S START-TYPE] [-w] [-t SECS] [-o "OPTIONS"]
   %s reload  [-D DATADIR] [-s]
   %s restart [-w] [-t SECS] [-D DATADIR] [-s] [-m SHUTDOWN-MODE]
                 [-o "OPTIONS"]
   %s start   [-w] [-t SECS] [-D DATADIR] [-s] [-l FILENAME] [-o "OPTIONS"]
   %s status  [-D DATADIR]
   %s stop    [-W] [-t SECS] [-D DATADIR] [-s] [-m SHUTDOWN-MODE]
   %s unregister [-N SERVICENAME]
   --help                 show this help, then exit
   --version              output version information, then exit
   -D, --pgdata DATADIR   location of the database storage area
   -N SERVICENAME  service name with which to register PostgreSQL server
   -P PASSWORD     password of account to register PostgreSQL server
   -S START-TYPE   service start type to register PostgreSQL server
   -U USERNAME     user name of account to register PostgreSQL server
   -W                     do not wait until operation completes
   -c, --core-files       allow postgres to produce core files
   -c, --core-files       not applicable on this platform
   -l, --log FILENAME     write (or append) server log to FILENAME
   -m SHUTDOWN-MODE   can be "smart", "fast", or "immediate"
   -o OPTIONS             command line options to pass to postgres
                         (PostgreSQL server executable) or initdb
   -p PATH-TO-POSTGRES    normally not necessary
   -s, --silent           only print errors, no informational messages
   -t SECS                seconds to wait when using -w option
   -w                     wait until operation completes
   auto       start service automatically during system startup (default)
   demand     start service on demand
   fast        quit directly, with proper shutdown
   immediate   quit without complete shutdown; will lead to recovery on restart
   smart       quit after all clients have disconnected
  done
  failed
  stopped waiting
 %s is a utility to start, stop, restart, promote, reload configuration files,
report the status of a PostgreSQL server, or signal a PostgreSQL process.

 %s: -S option not supported on this platform
 %s: -w option cannot use a relative socket directory specification
 %s: -w option is not supported when starting a pre-9.1 server
 %s: PID file "%s" does not exist
 %s: another server might be running; trying to start server anyway
 %s: cannot be run as root
Please log in (using, e.g., "su") as the (unprivileged) user that will
own the server process.
 %s: cannot promote server; server is not in standby mode
 %s: cannot promote server; single-user server is running (PID: %ld)
 %s: cannot reload server; single-user server is running (PID: %ld)
 %s: cannot restart server; single-user server is running (PID: %ld)
 %s: cannot set core file size limit; disallowed by hard limit
 %s: cannot stop server; single-user server is running (PID: %ld)
 %s: could not create promote signal file "%s": %s
 %s: could not find own program executable
 %s: could not find postgres program executable
 %s: could not open PID file "%s": %s
 %s: could not open service "%s": error code %d
 %s: could not open service manager
 %s: could not read file "%s"
 %s: could not register service "%s": error code %d
 %s: could not remove promote signal file "%s": %s
 %s: could not send promote signal (PID: %ld): %s
 %s: could not send reload signal (PID: %ld): %s
 %s: could not send signal %d (PID: %ld): %s
 %s: could not send stop signal (PID: %ld): %s
 %s: could not start server
Examine the log output.
 %s: could not start server: exit code was %d
 %s: could not start service "%s": error code %d
 %s: could not unregister service "%s": error code %d
 %s: could not wait for server because of misconfiguration
 %s: could not write promote signal file "%s": %s
 %s: database system initialization failed
 %s: invalid data in PID file "%s"
 %s: missing arguments for kill mode
 %s: no database directory specified and environment variable PGDATA unset
 %s: no operation specified
 %s: no server running
 %s: old server process (PID: %ld) seems to be gone
 %s: option file "%s" must have exactly one line
 %s: out of memory
 %s: server does not shut down
 %s: server is running (PID: %ld)
 %s: service "%s" already registered
 %s: service "%s" not registered
 %s: single-user server is running (PID: %ld)
 %s: this data directory is running a pre-existing postmaster
 %s: too many command-line arguments (first is "%s")
 %s: unrecognized operation mode "%s"
 %s: unrecognized shutdown mode "%s"
 %s: unrecognized signal name "%s"
 %s: unrecognized start type "%s"
 (The default is to wait for shutdown, but not for start or restart.)

 HINT: The "-m fast" option immediately disconnects sessions rather than
waiting for session-initiated disconnection.
 If the -D option is omitted, the environment variable PGDATA is used.
 Is server running?
 Please terminate the single-user server and try again.
 Server started and accepting connections
 The program "%s" is needed by %s but was not found in the
same directory as "%s".
Check your installation.
 The program "%s" was found by "%s"
but was not the same version as %s.
Check your installation.
 Timed out waiting for server startup
 Try "%s --help" for more information.
 Usage:
 WARNING: online backup mode is active
Shutdown will not complete until pg_stop_backup() is called.

 Waiting for server startup...
 child process exited with exit code %d child process exited with unrecognized status %d child process was terminated by exception 0x%X child process was terminated by signal %d child process was terminated by signal %s could not change directory to "%s" could not find a "%s" to execute could not identify current directory: %s could not read binary "%s" could not read symbolic link "%s" invalid binary "%s" server is still starting up
 server promoting
 server shutting down
 server signaled
 server started
 server starting
 server stopped
 starting server anyway
 waiting for server to shut down... waiting for server to start... Project-Id-Version: PostgreSQL 9.1
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2011-05-11 20:40+0000
PO-Revision-Date: 2013-09-03 23:26-0400
Last-Translator: Zhenbang Wei <znbang@gmail.com>
Language-Team: EnterpriseDB translation team <dev-escalations@enterprisedb.com>
Language: zh_TW
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
 
kill å¯ä»¥ä½¿ç¨çä¿¡èåç¨±ï¼
 
ä¸è¬é¸é ï¼
 
è¨»åæç§»é¤æåé¸é ï¼
 
ååæéæ°ååå¯ç¨é¸é :
 
åæ­¢æéæ°ååé¸é :
 
åå ±é¯èª¤è³ <pgsql-bugs@postgresql.org>ã
 
å¯ç¨ééæ¨¡å¼ï¼
 
ååé¡å:
   %s init[db]               [-D è³æç®é] [-s] [-o "é¸é "]
   %s kill    ä¿¡èåç¨± PID
   %s promote  [-D è³æç®é] [-s]
   %s register   [-N æååç¨±] [-U ä½¿ç¨èåç¨±] [-P å¯ç¢¼] [-D è³æç®é]
                    [-S ååé¡å] [-w] [-t ç§æ¸] [-o "é¸é "]
   %s reload  [-D è³æç®é] [-s]
   %s restart [-w] [-t ç§æ¸] [-D è³æç®é] [-s] [-m ééæ¨¡å¼]
                 [-o "é¸é "]
   %s start   [-w] [-t ç§æ¸] [-D è³æç®é] [-s] [-l æªå] [-o "é¸é "]
   %s status  [-D è³æç®é]
   %s stop    [-W] [-t ç§æ¸] [-D è³æç®é] [-s] [-m ééæ¨¡å¼]
   %s unregister [-N æååç¨±]
   --help                 é¡¯ç¤ºéä»½èªªæç¶å¾çµæ
   --version              é¡¯ç¤ºçæ¬è³è¨ç¶å¾çµæ
   -D, --pgdata è³æç®é  å­æ¾è³æåº«çç®é
   -N æååç¨±     ç¨ä¾è¨»å PostgreSQL ä¼ºæå¨çæååç¨±
   -P å¯ç¢¼         ç¨ä¾è¨»å PostgreSQL ä¼ºæå¨çå¯ç¢¼
   -S ååé¡å     è¨»å PostgreSQL ä½¿ç¨çååé¡å
   -U ä½¿ç¨è       ç¨ä¾è¨»å PostgreSQL ä¼ºæå¨çå¸³è
   -W                     ä¸ç­å¾æä½å®æ
   -c, --core-files       åè¨± postgres ç¢çæ ¸å¿æª
   -c, --core-files       æ­¤å¹³å°ä¸é©ç¨
   -l, --log æªå         å°ä¼ºæå¨logå¯«å¥(æéå è³)æªæ¡ã
   -m ééæ¨¡å¼   å¯ç¨ "smart"ã"fast" æ "immediate"
   -o é¸é                 è¦å³çµ¦ postgres(PostgreSQL ä¼ºæå¨å·è¡æª) 
                         æ initdb çå½ä»¤åé¸é 
   -p PATH-TO-POSTGRES    éå¸¸ä¸éè¦
   -s, --silent           åªé¡¯ç¤ºé¯èª¤ï¼ä¸é¡¯ç¤ºå¶ä»è¨æ¯
   -t ç§æ¸                ä½¿ç¨ -w é¸é æçç­åç§æ¸
   -w                     ç­å¾æä½å®æ
   auto       ç³»çµ±ååæèªåååæå(é è¨­)
   demand     æåååæå
   fast        ç´æ¥æ­£å¸¸éé
   immediate   ç«å³çµæï¼æå°è´ä¸æ¬¡ååæéè¦å¾©åç¨åº
   smart       å¨ææç¨æ¶ç«¯æ·ç·å¾éé
  å®æ
  å¤±æ
  åæ­¢ç­å¾
 %s å¯ä»¥ç¨ä¾ååãåæ­¢ãéæ°ååãæåãéæ°è¼å¥è¨­å®æªã
å ±å PostgreSQL ä¼ºæå¨çæï¼æéä¿¡èçµ¦ PostgreSQL è¡ç¨ã

 %s: æ­¤å¹³å°ä¸æ¯æ´ -S é¸é 
 %s: -w é¸é ä¸è½åç¸å° socket ç®éä¸èµ·ä½¿ç¨
 %s: åå pre-9.1 ä¼ºæå¨æä¸æ¯æ´ -w é¸é 
 %s: PIDæª "%s" ä¸å­å¨
 %s: å¯è½æå¦ä¸åä¼ºæå¨æ­£å¨å·è¡ï¼è«åè©¦å¼·å¶ååæ­¤ä¼ºæå¨
 %s: ç¡æ³ä»¥ root èº«ä»½å·è¡
è«ä»¥å°æææä¼ºæåè¡ç¨ç(éç¹æ¬)ä½¿ç¨èç»å¥(ä¾å¦ç¨ "su" å½ä»¤)ã
 %s: ç¡æ³æåä¼ºæå¨ï¼ä¼ºæå¨ä¸å¨å¾å½æ¨¡å¼
 %s: ç¡æ³æåä¼ºæå¨ï¼å®äººæ¨¡å¼ä¼ºæå¨æ­£å¨å·è¡ (PID:%ld)
 %s: ç¡æ³éæ°è¼å¥ä¼ºæå¨ï¼å®äººæ¨¡å¼ä¼ºæå¨æ­£å¨å·è¡ (PID:%ld)
 %s: ç¡æ³éæ°ååä¼ºæå¨ï¼å®äººæ¨¡å¼ä¼ºæå¨æ­£å¨å·è¡ (PID:%ld)
 %s: ç¡æ³è¨­å®æ ¸å¿æªæ¡å¤§å°éå¶ï¼å çºåºå®éå¶ä¸åè¨±
 %s: ç¡æ³åæ­¢ä¼ºæå¨ï¼å®äººæ¨¡å¼ä¼ºæå¨æ­£å¨å·è¡ (PID: %ld)
 %s: ç¡æ³å»ºç«æåä¿¡èæª "%s": %s
 %s: æ¾ä¸å°ç¨å¼å·è¡æª
 %s: æ¾ä¸å° postgres ç¨å¼çå·è¡æª
 %s: ç¡æ³éå PID æª "%s": %s
 %s: ç¡æ³éåæå "%s": é¯èª¤ç¢¼ %d
 %s: ç¡æ³éåæåç®¡çå¡
 %s: ç¡æ³è®åæªæ¡ "%s"
 %s: ç¡æ³è¨»åæå "%s": é¯èª¤ç¢¼%d
 %s: ç¡æ³åªé¤æåä¿¡èæª "%s": %s
 %s: ç¡æ³å³éæåä¿¡è(PID: %ld): %s
 %s: ç¡æ³å³ééæ°è¼å¥ä¿¡è(PID: %ld): %s
 %s: ç¡æ³å³éä¿¡è %d(PIDï¼%ld)ï¼%s
 %s: ç¡æ³å³éåæ­¢ä¿¡è(PID: %ld): %s
 %s: ç¡æ³ååä¼ºæå¨
è«æª¢æ¥ç´éè¼¸åºã
 %s: ç¡æ³ååä¼ºæå¨: çµæç¢¼æ¯ %d
 %s: ç¡æ³ååæå "%s": é¯èª¤ç¢¼ %d
 %s: ç¡æ³ç§»é¤æå "%s": é¯èª¤ç¢¼ %d
 %s: ç¡æ³ç­å¾ä¼ºæå¨ï¼è¨­å®é¯èª¤
 %s: ç¡æ³å¯«å¥æåä¿¡èæª "%s": %s
 %s: è³æåº«åå§åå¤±æ
 %s: PID æª "%s" ä¸­æç¡æè³æ
 %s: æªæå® kill æ¨¡å¼åæ¸
 %s: æªæå®è³æç®éåç°å¢è®æ¸ PGDATA
 %s: æªæå®æä½æ¹å¼
 %s: æ²æä¼ºæå¨æ­£å¨å·è¡
 %s: èçä¼ºæå¨ç¨åº (PID: %ld) ä¼¼ä¹éºæ¼
 %s: é¸é æª "%s" åªè½æä¸è¡å§å®¹
 %s: è¨æ¶é«ç¨ç¡
 %s: ä¼ºæå¨æªéé
 %s: ä¼ºæå¨æ­£å¨å·è¡ (PID:%ld)
 %s: æå "%s" å·²ç¶è¢«è¨»å
 %s: æªè¨»åæå "%s"
 %s: å®ä¸ä½¿ç¨èä¼ºæå¨æ­£å¨å·è¡ (PID:%ld)
 %s: éåè³æç®éæ­£å¨å·è¡ä»¥åç postmaster
 %s: å½ä»¤ååæ¸éå¤(ç¬¬ä¸åæ¯ "%s")
 %s: ç¡æ³è­å¥æä½æ¨¡å¼ "%s"
 %s: ç¡æ³è­å¥ééæ¨¡å¼ "%s"
 %s: ç¡æ³è­å¥ä¿¡èåç¨± "%s"
 %s: ç¡æ³è­å¥ååé¡å "%s"
 (é è¨­æ¯ééæèéååæéæ°ååæç­å¾ã)

 æç¤º: "-m fast" é¸é æç«å³ä¸­æ· sessionï¼ä¸ç­ session ç¼åæ·ç·ã
 å¦ææ²æä½¿ç¨é¸é  -Dï¼æ¹ç¨ç°å¢è®æ¸PGDATAã
 ä¼ºæå¨æ¯å¦æ­£å¨å·è¡?
 è«çµæå®ä¸ä½¿ç¨èä¼ºæå¨ï¼ç¶å¾åè©¦ä¸æ¬¡ã
 ä¼ºæå¨å·²ååä¸¦æ¥åé£ç·
 %2$s éè¦ç¨å¼ "%1$s"ï¼ä½æ¯å¨è "%3$s" ç¸åçç®éä¸­æ¾ä¸å°ã
è«æª¢æ¥ä½ çå®è£ã
 "%2$s"å·²æ¾å°ç¨å¼ "%1$s"ï¼ä½æ¯è %3$s çæ¬ä¸ç¬¦ã
è«æª¢æ¥ä½ çå®è£ã
 ç­åä¼ºæå¨ååé¾æ
 å·è¡ "%s --help" é¡¯ç¤ºæ´å¤è³è¨ã
 ä½¿ç¨æ¹æ³:
 è­¦å: ç·ä¸åä»½æ¨¡å¼ä½ç¨ä¸­
å¿é å¼å« pg_stop_backup()ï¼ééä½æ¥­æè½å®æã

 ç­åä¼ºæå¨åå...
 å­è¡ç¨çµæï¼çµæç¢¼ %d å­è¡ç¨çµæï¼ä¸æçæç¢¼ %d å­è¡ç¨è¢«ä¾å¤ 0x%X çµæ å­è¡ç¨è¢«ä¿¡è %d çµæ å­è¡ç¨è¢«ä¿¡è %s çµæ ç¡æ³åæç®éè³ "%s" æ¾ä¸å° "%s" ä¾å·è¡ ç¡æ³è­å¥ç®åçç®é: %s ç¡æ³è®å binary "%s" ç¡æ³è®åç¬¦èé£çµ "%s" ç¡æç binary "%s" ä¼ºæå¨ä»å¨ååä¸­
 ä¼ºæå¨æåä¸­
 ä¼ºæå¨æ­£å¨éé
 å·²éç¥ä¼ºæå¨
 ä¼ºæå¨å·²åå
 ä¼ºæå¨ååä¸­
 ä¼ºæå¨å·²åæ­¢
 æ­£å¼·å¶ååä¼ºæå¨
 æ­£å¨ç­åä¼ºæå¨éé... ç­åä¼ºæå¨åå... 