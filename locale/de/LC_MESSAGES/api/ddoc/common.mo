��          t      �         F     �   X  .   �          +  �   A  h   �  x   h  c   �     E  �  `  F   
  �   Q  6   �          4     J  [   K  z   �  c   "	     �	                          	          
                        **filters** (*object*): :ref:`Filter functions <filterfun>` definition **language** (*string*): Defines :ref:`Query Server <query-server>` :config:section:`key <query_servers>` to process design document functions **options** (*object*): View's default options :get:`/{db}/{docid}` :head:`/{db}/{docid}` Returns design document with the specified design document` from the specified database. Unless you request a specific revision, the latest revision of the document will always be returned. Returns the HTTP Headers containing a minimal amount of information about the specified design document. The :method:`PUT` method creates a new named design document, or creates a new revision of the existing design document. The design documents have some agreement upon their fields and structure. Currently it is the next: ``/db/_design/design-doc`` Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-11-18 09:39+0000
PO-Revision-Date: 2013-11-25 22:23+0000
Last-Translator: Andy <andywenk@apache.org>
Language-Team: LANGUAGE <LL@li.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Pootle 2.5.0-rc1
X-POOTLE-MTIME: 1385418211.0
 **filters** (*object*): :ref:`Filter functions <filterfun>` definieren **language** (*string*): Definiert :ref:`Query Server <query-server>` :config:section:`key <query_servers>` um Design-Dokument Funktionen auszuführen **options** (*object*): Die default Optionen des Views :get:`/{db}/{docid}` :head:`/{db}/{docid}` Gibt die Inhalte des Design-Dokuments zurück welches über den Namen des Design-Dokumentes und den Namen der Datenbank aus der URL spezifiziert ist. Wenn du keine bestimmte Revision angibst wird immer die aktuellste Version des Dokumentes zurück gegeben. Gibt die HTTP-Header mit minimalen Informationen zum ausgewählten Design-Dokument zurück. Über die Methode :method:`PUT` wird eine neues Design-Dokument oder eine neu Version des vorhandenen Dokumentes erstellt. Für Design-Dokumente gibt es ein paar Regeln für ihre Felder und Struktur. Aktuell sind es diese: ``/db/_design/design-doc`` 