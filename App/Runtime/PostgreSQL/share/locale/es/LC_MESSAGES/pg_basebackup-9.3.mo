��    �      �  �   <	      P     Q     g  !   z  
   �  -   �     �  3   �  K     <   g  >   �  3   �  V     <   n  ?   �  M   �  k   9  J   �  Y   �  +   J  B   v  *   �  8   �  5     r   S  1   �  3   �  K   ,  -   x  F   �  \   �  P   J  4   �  8   �  4   	  1   >  @   p  1   �     �  (     '   ,  &   T  (   {  -   �  "   �      �  $     ,   ;  +   h  .   �  (   �  #   �  5     9   F  4   �  7   �  =   �  "   +  &   N  #   u  /   �  >   �  Y     &   b  &   �  2   �  1   �  0        F     e  8   �  3   �  2   �      $  '   E  .   m  +   �  #   �  A   �  2   .  &   a  &   �  /   �  +   �  4     /   @  !   p  1   �  )   �  (   �  2     3   J  0   ~  %   �  +   �       2        F  ,   c  ,   �  #   �  W   �  9   9   A   s   #   �   9   �      !  !   1!  &   S!  A   z!  !   �!  "   �!  9   "  1   ;"  ,   m"     �"  '   �"  D   �"  8   #  6   S#     �#  E   �#  G   �#  z   1$  c   �$  %   %  2   6%  6   i%  #   �%  %   �%  R   �%  ,   =&  4   j&  >   �&  o   �&  k   N'  4   �'  %   �'  (   (  ;   >(  
   z(  &   �(     �(  /   �(     �(  /   �(  �  #)     �*     �*  #   +     /+  0   ;+     l+  ;   +  O   �+  B   ,  I   N,  <   �,  c   �,  B   9-  I   |-  v   �-  �   =.  Q   �.  b   $/  /   �/  L   �/  <   0  C   A0  8   �0  }   �0  7   <1  3   t1  v   �1  6   2  F   V2  \   �2  P   �2  6   K3  O   �3  K   �3  7   4  N   V4  0   �4  .   �4  ,   5  6   25  '   i5  0   �5  7   �5  ,   �5  $   '6  (   L6  6   u6  3   �6  6   �6  .   7  +   F7  F   r7  D   �7  C   �7  G   B8  D   �8  9   �8  1   	9  2   ;9  3   n9  \   �9  m   �9  +   m:  .   �:  C   �:  ;   ;  D   H;  .   �;  2   �;  L   �;  H   <<  N   �<  &   �<  *   �<  6   &=  @   ]=  7   �=  X   �=  C   />  -   s>  :   �>  ;   �>  6   ?  @   O?  :   �?  1   �?  A   �?  +   ?@  (   k@  ;   �@  F   �@  9   A  .   QA  5   �A     �A  A   �A  "   
B  0   -B  A   ^B  *   �B  n   �B  M   :C  N   �C  +   �C  F   D  (   JD  *   sD  8   �D  N   �D  "   &E  .   IE  Q   xE  H   �E  ;   F     OF  6   dF  `   �F  B   �F  I   ?G     �G  ]   �G  ^    H  �   _H  }   �H  2   lI  5   �I  >   �I  -   J  %   BJ  [   hJ  -   �J  J   �J  I   =K  |   �K  }   L  5   �L  -   �L  ,   �L  C   M     WM  2   eM     �M  5   �M     �M  ?   �M        �   I   b          )             8           �   -   d   o   W          f   ?   M   @   �   	   q   �   (       l                      n           N   =         `      4   C   U   *         �   A              �           j   �   y   �   2   E   X   "           t   +           }   T       i       V                  v   g   7      �          ^   3   �   �              k       p   ,               R   %       F      [   K       ;       D       H   x   1   ]   �   #   c   z       e   \   G   9   0          �       S      Y           
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
 Project-Id-Version: pg_basebackup (PostgreSQL 9.3)
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2013-08-26 19:19+0000
PO-Revision-Date: 2013-08-28 13:37-0400
Last-Translator: Álvaro Herrera <alvherre@alvh.no-ip.org>
Language-Team: Spanish <pgsql-es-ayuda@postgresql.org>
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Opciones de conexión:
 
Opciones generales:
 
Opciones que controlan la salida:
 
Opciones:
 
Reporte errores a <pgsql-bugs@postgresql.org>.
   %s [OPCIÓN]...
   -?, --help               mostrar esta ayuda, luego salir
   -D, --directory=DIR    recibe los archivos de transacción a este directorio
   -D, --pgdata=DIRECTORIO  recibir el respaldo base en directorio
   -F, --format=p|t         formato de salida (plano (por omisión), tar)
   -P, --progress           mostrar información de progreso
   -R, --write-recovery-info
                           escribe recovery.conf después del respaldo
   -U, --username=NOMBRE    conectarse con el usuario especificado
   -V, --version            mostrar información de versión, luego salir
   -W, --password           forzar un prompt para la contraseña
                           (debería ser automático)
   -X, --xlog-method=fetch|stream
                           incluye los archivos WAL necesarios,
                           en el modo especificado
   -Z, --compress=0-9       comprimir salida tar con el nivel de compresión dado
   -c, --checkpoint=fast|spread
                           utilizar checkpoint rápido o extendido
   -s, --dbname=CONSTR      cadena de conexión
   -h, --host=ANFITRIÓN     dirección del servidor o directorio del socket
   -l, --label=ETIQUETA     establecer etiqueta del respaldo
   -n, --no-loop          no entrar en bucle al perder la conexión
   -p, --port=PORT          número de port del servidor
   -s, --status-interval=INTERVALO (segundos)
                         tiempo entre envíos de paquetes de estado al servidor
   -v, --verbose            desplegar mensajes verbosos
   -w, --no-password        nunca pedir contraseña
   -x, --xlog               incluye los archivos WAL necesarios en el respaldo
                           (modo fetch)
   -z, --gzip               comprimir la salida de tar
 %*s/%s kB (%d%%), %d/%d tablespace %*s/%s kB (%d%%), %d/%d tablespaces %*s/%s kB (%d%%), %d/%d tablespace (%s%-*.*s) %*s/%s kB (%d%%), %d/%d tablespaces (%s%-*.*s) %*s/%s kB (100%%), %d/%d tablespace %*s %*s/%s kB (100%%), %d/%d tablespaces %*s %s recibe flujos de logs de transacción PostgreSQL.

 %s obtiene un respaldo base a partir de un servidor PostgreSQL en ejecución.

 %s: el flujo COPY terminó antes que el último archivo estuviera completo
 %s: el flujo de WAL sólo puede usar en modo «plain»
 %s: sólo se puede escribir un tablespace a stdout, la base de datos tiene %d
 %s: no se puede tanto --xlog como --xlog-method
 %s: el hijo %d murió, pero se esperaba al %d
 %s: el proceso hijo no terminó normalmente
 %s: el proceso hijo terminó con código de salida %d
 %s: el hilo hijo terminó con error %u
 %s: no se pudo acceder al directorio «%s»: %s
 %s: no se pudo cerrar el archivo comprimido «%s»: %s
 %s: no se pudo cerrar el archivo «%s»: %s
 %s: no se pudo conectar al servidor
 %s: no se pudo conectar al servidor: %s
 %s: no se pudo lanzar el proceso en segundo plano: %s
 %s: no se pudo lanzar el hilo en segundo plano: %s
 %s: no se pudo crear el archivo comprimido «%s»: %s
 %s: no se pudo crear el directorio «%s»: %s
 %s: no se pudo crear el archivo «%s»: %s
 %s: no se pudo crear la tubería para el proceso en segundo plano: %s
 %s: no se pudo crear un enlace simbólico desde «%s» a «%s»: %s
 %s: no se pudo crear el archivo de historia de timeline «%s»: %s
 %s: no se pudo determinar la posición (seek) en el archivo «%s»: %s
 %s: no se pudo determinar la opción integer_datetimes del servidor
 %s: no se pudo sincronizar (fsync) el archivo «%s»: %s
 %s: no se pudo obtener un flujo de datos COPY: %s %s: no se pudo obtener la cabecera de respaldo: %s %s: no se pudo obtener la cabecera de respaldo: %s
 %s: no se pudo obtener la posición del final del registro de transacciones del servidor: %s %s: no se pudo identificar al sistema: se obtuvieron %d filas y %d campos, se esperaban %d filas y %d campos
 %s: no se pudo iniciar el respaldo base: %s %s: no se pudo abrir el directorio «%s»: %s
 %s: no se pudo abrir el archivo de historia de timeline «%s»: %s
 %s: no se pudo abrir el archivo de transacción «%s»: %s
 %s: no se pudo rellenar (pad) el archivo de transacción «%s»: %s
 %s: nose pudo interpretar el modo del archivo
 %s: no se pudo interpretar el tamaño del archivo
 %s: no se pudo interpretar el punto de inicio del siguiente timeline «%s»
 %s: no se pudo interpretar el nombre del archivo de transacción «%s»
 %s: no se pudo interpretar la ubicación del registro de transacciones «%s»
 %s: no fue posible leer datos COPY: %s %s: no se pudo leer desde la tubería: %s
 %s: no se pudo recibir datos desde el flujo de WAL: %s %s: no se pudo cambiar el nombre al archivo «%s» a «%s»: %s
 %s: no se pudo cambiar el nombre al archivo «%s»: %s
 %s: no se pudo posicionar (seek) hacia el inicio del archivo de transacción «%s»: %s
 %s: no se pudo enviar una orden a la tubería de segundo plano: %s
 %s: no se pudo enviar el paquete copy-end: %s %s: no se pudo enviar el paquete de retroalimentación: %s %s: no se pudo ejecutar la orden de replicación «%s»: %s %s: no se pudo definir el nivel de compresión %d: %s
 %s: no se pudo definir los permisos en el directorio «%s»: %s
 %s: no se pudo definir los permisos al archivo «%s»: %s
 %s: no se pudo hacer stat del archivo «%s»: %s
 %s: no se pudo hacer stat del archivo de transacción «%s»: %s
 %s: no se pudo esperar al proceso hijo: %s
 %s: no se pudo esperar el hilo hijo: %s
 %s: no se pudo escribir %u bytes al archivo WAL «%s»: %s
 %s: no se pudo escribir al archivo de historia de timeline «%s»: %s
 %s: no se pudo escribir al archivo comprimido «%s»: %s
 %s: no se pudo escribir al archivo «%s»: %s
 %s: el directorio «%s» existe pero no está vacío
 %s: desconectado
 %s: desconectado; esperando %d segundos para intentar nuevamente
 %s: la recepción final falló: %s %s: terminó el segmento en %X/%X (timeline %u)
 %s: se obtuvo desplazamiento de datos WAL %08x, se esperaba %08x
 %s: versión del servidor %s incompatible
 %s: versión de servidor %s incompatible; la transmisión en flujo sólo está soportada desde la versión %s
 %s: la opción de compilación integer_datetimes no coincide con el servidor
 %s: argumento de checkpoint «%s» no válido, debe ser «fast» o «spread»
 %s: valor de compresión «%s» no válido
 %s: formato de salida «%s» no válido, debe ser «plain» o «tar»
 %s: número de puerto «%s» no válido
 %s: intervalo de estado «%s» no válido
 %s: tamaño de bloque de cabecera de tar no válido: %d
 %s: opción de xlog-method «%s» no válida, debe ser «fetch» o «stream»
 %s: el servidor no retornó datos
 %s: no se especificó un directorio de salida
 %s: el servidor no retornó la posición del final del registro de transacciones
 %s: no se cambiará el nombre a «%s%s», el segmento no está completo
 %s: sólo los respaldos de modo tar pueden ser comprimidos
 %s: memoria agotada
 %s: se recibió una señal de interrupción, saliendo
 %s: se recibió un registro transaccional para el desplazamiento %u sin ningún archivo abierto
 %s: el flujo de replicación terminó antes del punto de término
 %s: el archivo de segmento «%s» tiene tamaño incorrecto %d, ignorando
 %s: select() falló: %s
 %s: el servidor reportó un nombre inesperado para el archivo de historia de timeline %u: %s
 %s: el servidor reportó un timeline siguiente %u inesperado, a continuación del timeline %u
 %s: el servidor envió una respuesta inesperada a la orden BASE_BACKUP; se obtuvieron %d filas y %d campos, se esperaban %d filas y %d campos
 %s: el servidor paró la transmisión del timeline %u en %X/%X, pero reportó que el siguiente timeline %u comienza en %X/%X
 %s: iniciando el receptor de WAL en segundo plano
 %s: iniciando el flujo de log en %X/%X (timeline %u)
 %s: el timeline de inicio %u no está presente en el servidor
 %s: cabecera de flujo demasiado pequeña: %d
 %s: cambiado al timeline %u en %X/%X
 %s: el identificador de sistema no coincide entre el respaldo base y la conexión de flujo
 %s: esta instalación no soporta compresión
 %s: demasiados argumentos en la línea de órdenes (el primero es «%s»)
 %s: el archivo de transacción «%s» mide %d bytes, debería ser 0 o %d
 %s: respuesta inesperada a la orden TIMELINE_HISTORY: se obtuvieron %d filas y %d campos, se esperaban %d filas y %d campos
 %s: respuesta inesperada después del fin-de-timeline: se obtuvieron %d filas y %d campos, se esperaban %d filas y %d campos
 %s: término inesperado del flujo de replicación: %s %s: indicador de enlace «%c» no reconocido
 %s: cabecera de flujo no reconocida: «%c»
 %s: esperando que el proceso en segundo plano complete el flujo...
 Contraseña:  Use «%s --help» para obtener más información.
 Empleo:
 no se puede duplicar un puntero nulo (error interno)
 memoria agotada
 punto de inicio del log de transacciones: %s en el timeline %u
 