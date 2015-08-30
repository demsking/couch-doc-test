��    +      t  ;   �      �  7   �  �   �  T   �     ;  =   X  p   �               #  8   <     u     �  �   �     �	     �	  �   �	  1   �
  �   �
  z   �  0   4  �   e     M  =   \  =   �  �   �  3   v  ,   �  +   �  $     "   (  ,   K  B   x  R   �  �     R   �  -   �  R   '  (   z  �   �  �   )       <   9  �  v  9   #  *  ]  _   �  )   �  4     h   G  �  �     �     �  7   �       &   0  &  W     ~     �  �   �  ;   �  �   �  \   z  /   �  �        �  F   �  O   �  �   F  2   �  8      &   D   !   k      �   )   �   K   �   H   "!  �   k!  Q   '"  7   y"  g   �"  (   #  �   B#    �#  3   �$  i   )%            &   '                     *          $                                !   )          %                                            "                    #      +      
                 	      (       Consult your system documentation for more information. Create a group called `couchdb` and add yourself, the `couchdb` user, and any others you want to be able to edit config or db files directly to it. Use the `advanced` group options to ensure the internal name is also correctly called `couchdb`. Create a standard user `couchdb` with home directory as `/usr/local/var/lib/couchdb` Double click on the Zip file Drag and drop the Apache CouchDB.app into Applications folder If you wish to have CouchDB run as a daemon then, set up the account, using the "User & Groups" preference pane: If you're hacking on CouchDB, and we hope you will, you may try the current git-based master (head) branch, or the next development release using this ``couchdb`` recipe, using either ``--head`` or ``--devel`` options respectively. This will allow quick installation of the future release branch when it becomes active. If you're not sure if you need this, then you probably don't. In both cases we assume you are comfortable identifying bugs, and handling any potential upgrades between commits to the codebase. Installation from MacPorts Installation on Mac OS X Installation using the Apache CouchDB native application Installation with HomeBrew Now it's time to brew CouchDB:: OS X Lion might hang on the final brew. See the thread at https://github.com/mxcl/homebrew/issues/7024 it seems in most cases to be resolved by breaking out with ``CTRL-C`` and then repeating with ``brew install -v couchdb``. Run Apache CouchDB application Running as a Daemon Some versions of Mac OS X ship a problematic OpenSSL library. If you're experiencing troubles with CouchDB crashing intermittently with a segmentation fault or a bus error, you will need to install your own version of OpenSSL. That's all, now CouchDB is installed on your Mac: The above Erlang install will use the bottled (pre-compiled) version if you are: using `/usr/local` for `homebrew`, and on 10.6 or 10.7. If you're not on one of these, `homebrew` will build from source, so consider doing:: The easiest way to run CouchDB on Mac OS X is through his native Mac OS X application. Just follow the below instructions: The same is true for recent versions of Erlang:: This will upgrade dependencies recursively, if there are more recent versions available. If you want to run CouchDB as a service controlled by the OS, load the launchd configuration which comes with the project, with this command:: Time to Relax! To install CouchDB using MacPorts you have 2 package choices: To start the daemon on boot, copy the configuration file to:: Updating the ports collection. The collection of port files has to be updated to reflect the latest versions of available packages. In order to do that run:: You can edit the launchd configuration by running:: You can install the build tools by running:: You can load the configuration by running:: You can restart CouchDB by running:: You can start CouchDB by running:: You can stop the CouchDB daemon by running:: You can use the `launchctl` command to control the CouchDB daemon. You may want to link ICU so that CouchDB can find the header files automatically:: You will need `Homebrew`_ installed to use the `brew` command. To install the other :ref:`dependencies <install/unix/dependencies>` run next commands:: `Download Apache CouchDB for Mac OS X`_. Old releases are available at `archive`_. `Open up Futon`_, the CouchDB admin interface ``couchdb-devel`` - updated every few weeks with the latest from the master branch ``couchdb`` - the latest release version and it should be up and accessible via Futon at http://127.0.0.1:5984/_utils. It should also be restarted automatically after reboot. should be enough. MacPorts takes care of installing all necessary dependencies. If you have already installed some of the CouchDB dependencies via MacPorts, run this command to check and upgrade any outdated ones, after installing CouchDB:: to trim down compilation time. to update the port tree, and then install just as explained. Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-11-18 09:39+0000
PO-Revision-Date: 2014-04-10 20:47+0000
Last-Translator: Robert <rok@kowalski.gd>
Language-Team: LANGUAGE <LL@li.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Pootle 2.5.1-rc1
X-POOTLE-MTIME: 1397162842.000000
 In deiner Systemdokumentation findest du nähere Details. Erstelle eine Gruppe `couchdb` und füge dich selbst, alle anderen Benutzer die Konfigurationsdateien oder Datenbankdateien editieren können sollen und den Benutzer `couchdb` hinzu. In dem Screen `Erweiterte Optionen` sollte der interne Name auch für den Benutzer `couchdb` auch `couchdb` lauten. Erstelle einen normalen Benutzer `couchdb` mit dem Homeverzeichnis `/usr/local/var/lib/couchdb` Mache einen Doppelklick auf die Zip-Datei Ziehe die Apache CouchDB.app in den Ordner Programme Wenn du CouchDB als einen Daemon aufsetzen willst, klicke auf "Benutzer & Gruppen" in den Einstellungen: Falls du an CouchDB hackst, worüber wir uns freuen würden, kannst du dir den derzeitigen git master Branch auschecken oder das nächste development Release mit dem ``couchdb`` Rezept und den Parametern ``--head`` oder ``--devel`` installieren. So kannst du neue, zukünftige Release Branches schnell installieren. Wenn du nicht sicher bist, ob du das benötigst, wirst du diese Installation wahrscheinlich nicht brauchen. Du solltest mit Bugs leben können und die Codebase nach ein paar Commits updaten. Von MacPorts installieren Installation auf Mac OSX CouchDB mit der nativen Apache CouchDB App installieren Mit Homebrew installieren Nun können wir CouchDB installieren:: Es kann passieren dass OS X Lion bei der Installation via Homebrew nicht mehr reagiert. Es gibt einen Thread unter https://github.com/mxcl/homebrew/issues/7024 und das Problem scheint in den meisten Fällen durch ein ``CTRL-C`` mit anschließendem ``brew install -v couchdb`` behoben zu werden. Die Apache CouchDB starten Als Daemon betreiben Einige Versionen von Mac OS X kommen mit OpenSSL Bibliotheken, die Probleme verursachen. Wenn deine CouchDB zwischendurch mit Segmentation Faults oder einem Bus-Error abstürzt solltest du deine eigene OpenSSL Version installieren. Das wars, die CouchDB ist jetzt auf deinem Mac installiert: Die vorkompilierte Version wird installiert, wenn man auf 10.6 und 10.7 ist und  `/usr/local` für `homebrew` nutzt. Falls dies nicht der Fall ist, benutze folgendes:: In Mac OS X kann man CouchDB am leichtesten mit der nativen Mac OS X Anwendung installieren: Das gilt auch für die neueste Erlang Version:: Damit updatest du alle Abhängigkeiten. Wenn du CouchDB als Beriebssystem-Service starten willst, lade einfach die mitgelieferte launchd Konfiguration:: Time to Relax! Es gibt zwei Pakete um CouchDB mit Hilfe von MacPorts zu installieren: Um den Daemon beim booten zu starten, kopiere die Konfigurationsdatei hierhin:: Damit man die neuesten Version von einem Paket bekommt, sollte man seine ports-Dateien regelmäßig aktualisieren. Führe einfach folgendes aus:: Du kannst die launchd Konfiguration so editieren:: Installiere die Build-Tools, um CouchDB zu kompilieren:: Du kannst die Konfiguration so laden:: Du kannst CouchDB so neustarten:: So kannst du CouchDB starten:: Du kannst den CouchDB Daemon so stoppen:: Um den CouchDB Daemon zu steuern kannst du den `launchctl` Befehl benutzen. Damit CouchDB die Headerfiles automatisch findet, kannst du ICU linken:: Um den `brew` Befehl nutzen zu können muss `Homebrew`_ installiert sein. Um die anderen :ref:`Abhängigkeiten <install/unix/dependencies>` zu installieren gibt man folgende Befehle ein:: `Download Apache CouchDB for Mac OS X`_. Alte Releases erhält man im `archive`_. `Open up Futon`_, die CouchDB Adminstrationsoberfläche ``couchdb-devel`` - wird alle paar Wochen mit den letzten Änderungen aus dem Masterbranch aktualisiert ``couchdb`` - das neueste Stable Release und CouchDB sollte starten und Futon unter http://127.0.0.1:5984/_utils erreichbar sein. CouchDB sollte nun auch nach einem Neustart des Betriebsystems automatisch starten. sollte ausreichen. MacPorts wird alle benötigten Abhängigkeiten installieren. Falls du schon einige Abhängigkeiten per MacPorts installiert hast, führe folgenden Befehl nach der Installation von CouchDB aus um sie zu überprüfen und ggf. zu aktualisieren:: um die Zeit für das kompilieren etwas abzukürzen. Damit wird der Baum von Abhängigkeiten in ports aktualisiert und du kannst wie beschrieben installieren. 