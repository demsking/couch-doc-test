��          �      ,      �  "   �      �  ^   �  F   ,  E   s  �   �     I     a     y     �  y   �  H     N   V  N   �  4   �  E  )  �  o  "         ?  w   `  O   �  f   (	  z   �	     

     !
     :
     P
  b   l
  J   �
  V     X   q  &   �  m  �                                            	                       
           /usr/local/etc/couchdb/default.ini /usr/local/etc/couchdb/local.ini Administrators should use ``default.ini`` as reference and only modify the ``local.ini`` file. After enabling couchdb rc service use the following to start CouchDB:: I used the ``pw`` command to add a user "couchdb" in group "couchdb": In case the install script fails to install a noninteractive user "couchdb" to be used for the database, the user needs to be created manually: Installation from ports Installation on FreeBSD Post install Start script The following options for ``/etc/rc.conf`` or ``/etc/rc.conf.local`` are supported by the start script (defaults shown):: The start script will also use settings from the following config files: The user is added to ``/etc/passwd`` and should look similar to the following: This script responds to the arguments `start`, `stop`, `status`, `rcvar` etc.. This will install CouchDB from the ports collection. To change any of these settings, please refrain from editing `/etc/passwd` and instead use ``pw user mod ...`` or ``vipw``. Make sure that the user has no shell, but instead uses ``/usr/sbin/nologin``. The '*' in the second field means that this user can not login via password authorization. For details use `man 5 passwd`_. Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-11-18 09:39+0000
PO-Revision-Date: 2014-03-27 19:51+0000
Last-Translator: Robert <rok@kowalski.gd>
Language-Team: LANGUAGE <LL@li.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Pootle 2.5.1-rc1
X-POOTLE-MTIME: 1395949905.000000
 /usr/local/etc/couchdb/default.ini /usr/local/etc/couchdb/local.ini Man sollte die ``default.ini`` als Referenz benutzen und nur die ``local.ini`` auf seine eigenen Bedürfnisse anpassen. Sobald man den CouchDB rc-Dienst eingerichtet hat, kann man CouchDB so starten: Ich habe hier den Befehl ``pw`` benutzt, um den Benutzer "couchdb" der Gruppe "couchdb" hinzuzufügen: Wenn das Installationsscript keinen Benutzer "couchdb" für die Datenbank anlegen konnte, müssen wir ihn manuell anlegen: Installation von ports Installieren auf FreeBSD Nach der Installation CouchDB beim booten starten Für die ``/etc/rc.conf`` oder ``/etc/rc.conf.local`` können folgende Optionen verwendet werden:: Das Script zum Starten von CouchDB benutzt folgende Konfigurationsdateien: Der Benutzer wird zur ``/etc/passwd`` hinzugefügt. Das Ganze sollte dann so aussehen: Man kann mit diesem Script Parameter wie `start`, `stop`, `status`, `rcvar` usw. nutzen. So installieren wir CouchDB aus ports. Bitte editiere nie direkt die `/etc/passwd`, sondern benutze Befehle wie ``pw user mod ...`` or ``vipw``. Der Benutzer "couchdb" sollte keine Shell bekommen, sondern ``/usr/sbin/nologin`` nutzen. Wenn sich im zweiten Feld ein '*' befindet, kann der Benutzer sich nicht mit der passwortbasierten Autorisierung anmelden, mehr Details dazu gibt es mit `man 5 passwd`_. 