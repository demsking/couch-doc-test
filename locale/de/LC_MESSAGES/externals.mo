��    (      \  5   �      p  p  q  
   �    �  0   �  �  /  O   �  �   .     �     �  u  	     �
     �
  '  �
     �  M  �  3   7     k  ?  �  !   �     �      �   
     �     �    �     
     %    7     G  �   W  *   ,    W  G   t  �   �  g   S  X   �  �     A   �  <   �  �  )  �  �  
     &  �  F   �  �  �  h   �  �         �   -   �   �  !     �"     #  [  #     w$  �  �$  D   &     R&  �  o&  %   (  "   *(  .  M(  �   |)  
   k*     v*  	  �*  -   �+     �+    �+     �-  �   �-  9   �.  ^  /  V   m0  �   �0  �   r1  f   �1  �   ]2  A   3  <   ]3                   #       %                               
                                    &   (                             !   $            '                      	          "    **[Update]**: I woke up the other morning realizing that I was being an idiot and that Erlang is awesome. There's no reason that I can't have an HTTP client, proxy, and server all hosted in the same process. So that's what I did. It turns out to be a fairly nice way of configuring matching assertions between the client and the server to test the proxy transmissions. 2010-09-26 A couple things to note here. Anything in the path after the configured proxy name ("_fti" in this case) will be appended to the configured destination URL ("http://127.0.0.1:5985" in this case). The query string and any associated body will also be proxied transparently. A request for a config section looks like this:: After hitting on the idea of adding a reverse proxy, people quickly pointed out that it would require users to start manually managing their external processes using something like `Runit`_ or `Supervisord`_. After some more discussions I ran into people that wanted something like _externals that didn't handle HTTP requests. After that it was easy to see that adding a second feature that managed OS processes was the way to go. All requests and responses are terminated with a newline (indicated by ``\n``). Also, of note is that there's nothing that limits on what resources can be proxied. You're free to choose any destination that the CouchDB node is capable of communicating with. And the response:: And then start CouchDB and try: As an added benefit, because stdio is now free, I implemented a simple API that OS daemons can use to read the configuration of their CouchDB host. This way you can have them store their configuration inside CouchDB's config system if you desire. Or they can peek at things like the :config:option:`httpd/bind_address` and :config:option:`httpd/port` that CouchDB is using. Configuration API CouchDB Externals API During CouchCamp a few weeks ago I had multiple discussions with various people that wanted to see the _externals API modified in slight ways that weren't mutually compatible. After having multiple discussions with multiple people we formed a general consensus on what a new API could look like. Dynamic Daemons Even though they're dead simple to write, there are a few issues. The implementation in CouchDB does not provide fancy pooling semantics. The current API is explicitly synchronous which prevents people from writing event driven code in an external handler. In the end, they may be simple, but their simplicity is also quite limiting. File `local.ini` (Just add these to what you have): File `node-hello-world.js`: For a bit of background, CouchDB has had an API for managing `external OS processes`_ that are capable of handling HTTP requests for a given URL prefix. These OS processes communicate with CouchDB using JSON over stdio. They're dead simple to write and provide CouchDB users an easy way to extend CouchDB functionality. How does it work? - HTTP Proxying How does it work? - OS Daemons I spent this weekend implementing both of these features. Both are at the stage of working but requiring more testing. In the case of the HTTP proxy I have no tests because I can't decide how to test the thing. If you have ideas, I'd sure like to hear them. It was suggested that a good first demo would be a `Node.js`_ handler. So, I present to you a "Hello, World" Node.js handler. Also, remember that this currently relies on code in my fork on `GitHub`_. Logging API Neat. But So What? OS daemons are one-to-one. For each daemon, CouchDB will make sure that exactly one instance of it is alive. If you have something where you want multiple processes, you need to either tell CouchDB about each one, or have a main process that forks off the required sub-processes. Or to get a specific key:: Paul Joseph Davis So the first idea for improving the _external API was to make CouchDB act as a reverse proxy. This would allow people to write an HTTP server that was as simple or as complicated as they wanted. It will allow people to change their networking configuration more easily and also allow for external processes to be hosted on nodes other than the one running CouchDB. Bottom line, it not only allows us to have similar semantics as _externals, it provides a lot more fringe benefits as well. I'm always a fan of extra awesomeness. The New Hotness The OS daemons react in real time to changes to the configuration system. If you set or delete keys in the :config:section:`os_daemons` section, the corresponding daemons will be started or killed as appropriate. The corresponding CouchDB logs look like:: The second part of the new API gives CouchDB simple OS process management. When CouchDB boots it will start each configured OS daemon. If one of these daemons fails at some point, it will be restarted. If one of these daemons fails too often, CouchDB will stop attempting to start it. There's also an API for adding messages to CouchDB's logs. Its simply:: This would be approximately what you'd need to do to get `CouchDB-Lucene`_ handled through this interface. The URL you use to access a query would be: To configure a :ref:`proxy handler <config/proxy>`, edit your `local.ini` and add a section like such:: To configure an :config:section:`OS daemon <os_daemons>`, add this to your `local.ini`:: Where ``$MESG`` is any arbitrary JSON. There is no response from this command. As with the config API, the trailing ``\n`` represents a newline byte. http://127.0.0.1:5984/_fti/db_name/_design/foo/by_content?q=hello http://davispj.com/2010/09/26/new-couchdb-externals-api.html Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-11-18 09:39+0000
PO-Revision-Date: 2014-01-07 20:16+0000
Last-Translator: Andy <andywenk@apache.org>
Language-Team: LANGUAGE <LL@li.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Pootle 2.5.1-rc1
X-POOTLE-MTIME: 1389125803.000000
 **[Update]**: Ich bin am anderen morgen aufgewacht um festzustellen, dass ich ein Idiot war und Erlang super ist. Es gibt keinen Grund warum ich gleichzeitig einen HTTP-Client, -Proxy und -Server im gleichen Prozess hosten kann. Also hab ich das getan. Es hat sich herausgestellt, dass das ein sehr guter Weg ist zutreffende Assertions zwischen dem Client und Server zu konfigurieren um die Proxy-Übertragungen zu testen. 26.09.2010 Einige Dinge sollen hier angemerkt werden. Alles im Pfad nach dem konfigurierten Proxy-Name ("_fti" in diesem Fall) wird an die konfigurierte Ziel-URL angefügt ("http://127.0.0.1:5985" in diesem Fall). Der Query-String und jeglicher angefügter Body wird ebenfalls transparent durchgeschleift. Ein Request für einen bestimmt Konfigurations-Abschnitt sieht so aus: Nach dem angehen der Idee einen Reverse-Proxy hinzuzufügen haben viele angemerkt, dass dies bedeutet, dass Nutzer anfangen müssen ihre externen Prozesse manuell mit tools wie `Runit`_ oder `Supervisord`_ verwalten müssen. nach einigen weiteren Diskussionen kamen Leute auf mich zu die _externals wollten, die nicht HTTP-Requests behandeln. Danach war klar dass ein zweites Feature her musste das Betriebssystem-Prozess verarbeitet. Alle Requests und Responses werden mit einem Zeilenumbruch beendet (durch die ``\n`` Sequenz angegeben). Es ist auch anzumerken, das es keine Beschränkungen gibt welche Art Ressourcen durchgeschleift werden können. Es steht dir frei jegliches Ziel zu wählen mit dem die CouchDB node kommunizieren kann. Und die Response: Und starte CouchDB und versuche auszuführen: Als zusätzlicher Nutzen weil stdio jetzt verfügbar ist, habe ich eine einfache API implementiert, die  OS daemons nutzen können um die Konfiguration des CouchDB-Host einzulesen. Auf diesem Weg kannst Du die daemons dazu bewegen ihre Konfiguration innerhalb des CouchDB-Konfigurations-Systems abzulegen wenn Du möchtest. Oder sie können dadurch auf Dinge von CouchDB genutzt werden wie :config:option:`httpd/bind_address` und :config:option:`httpd/port` zugreifen. Konfigurations API CouchDB Externals API Während des CouchCamp vor ein paar Wochen habe ich mehrere Diskussionen mit unterschiedlichen Leuten gehabt, die die _externals API etwas abgeändert sehen möchten. Allerdings sind diese nicht für beide Seiten kompatibel. Nach mehreren Diskussionen mit mehreren Leuten haben wir einen allgemeinen Konsens gefunden, wie die API aussehen könnte. Dynamische Daemons Obwohl sie sehr einfach zu schreiben sind, gibt es ein paar Probleme. Ihre Umsetzung in CouchDB bietet keine ausgefallene Pooling Semantik. Die aktuelle API ist ausdrücklich synchron implementiert was dazu führt, das man nicht in der Lage ist "Event driven" Code in Externen-Handlern zu schreiben. Am Ende sind sie zwar simpel, aber diese Einfachheit ist auch ziemlich einschränkend. Datei `local.ini` (füge das einfach der bereits bestehenden hinzu): Datei `node-hello-world.js`: Um ein wenig Hintergrund zu geben: CouchDB hatte eine API um `externen Betriebsystem- Prozesse`_ zu handhaben, die in der Lage waren HTTP-Requests mit einem URL-Prefix ausführen zu können. Diese Betriebsystem-Prozesse kommunizieren mit CouchDB über STDIO unter Verwendung von JSON. Sie sind sehr einfach zu schreiben und bieten CouchDB Nutzern die Möglichkeit CouchDB-Funktionalitäten zu erweitern.  Wie funktioniert das? - HTTP Proxying Wie funktioniert das? - OS Daemons Ich habe dieses Wochenende damit verbracht beide Features zu implementieren. Beide haben den Zustand, dass sie laufen, bedürfen aber mehr Tests. Im Fall des HTTP-Proxy habe ich keine Tests weil ich nicht entscheiden kann, wie ich das testen soll. Wenn Du Ideen hast würde ich diese sehr gerne hören. Es wurde vorgeschlagen, dass eine gutes erste Demo ein `Node.js`_ handler wäre. Also präsentiere ich Euch hier einen "Hello, World" Node.js handler. Berücksichtige bitte, dass dieser Code momentan auf meinem fork auf `GitHub`_ basiert. Loggin API Nett. Und nun? OS-Daemons sind eins-zu-eins. CouchDB wird dafür Sorge tragen, dass jeweils exakt einer läuft. Wenn Du mehrere Prozesse benötigst, musst Du entweder CouchDB über jeden einzelnen informieren oder einen Haupt-Prozess haben, der die benötigten Sub-Prozesse forkt. Oder so, um einen bestimmten Key zu erhalten: Paul Joseph Davis Die erste Idee die _externals API zu verbessern war die Idee CouchDB als Reverse Proxy agieren zu lassen. Das würde einem erlauben einen HTTP-Server zu schreiben, der so simpel oder so kompliziert wie man möchte sein kann. Es erlaubt einem seine Netzwerk-Konfiguration einfacher abzuändern und erlaubt externe Prozesse auf einer anderen Node als auf der CouchDB läuft zu hosten. Zusammengefasst erlaubt es nicht nur die gleiche Semantik wie _externals zu haben, sondern bietet auch noch viele weitere, nebenläufige Vorteile.  Neu und heiß Die OS-Daemons reagieren in "Real-Time" auf Änderungen am Konfigurations-System. Wenn Du Keys im Bereich :config:section:`os_daemons` setzt oder löschst, werden die entsprechenden Daemons entsprechend gestartet oder beendet.  Die entsprechenden Log-Einträge in CouchDB sehen so aus: Der zweite Teil der neuen API ermöglicht CouchDB das einfache verwalten von Betriebssystem-Prozessen. CouchDB wird während des Bootens jeden konfigurierten OS-Daemon starten. Wenn einer dieser Daemons zu irgend einem Zeitpunkt fehlerhaft ist, wird er neu gestartet. Wenn einer dieser zu oft fehlerhaft ist, wird CouchDB aufhören diesen zu starten. Es gibt auch eine API um dem CouchDB-Log Einträge hinzuzufügen. Es geht einfach so:: Das ist ungefähr das was du brauchst um `CouchDB-Lucene`_ mit diesem Interface verarbeiten zu können. Die URL die du nutzt um eine Abfrage auszuführen würde so aussehen: Editiere deine `local.ini` um einen :ref:`proxy handler <config/proxy>` zu konfigurieren und füge einen Abschnitt wie diesen dazu: Um einen :config:section:`OS daemon <os_daemons>` zu konfigurieren, füge dies der `local.ini` hinzu:: Wobei ``$MESG`` irgend ein JSON-String ist. Dieser Befehl liefert keine Response. Wie schon bei der Konfigurations-API repräsentiert die Sequenz ``\n`` am Zeilenende eine das Newline-Byte. http://127.0.0.1:5984/_fti/db_name/_design/foo/by_content?q=hello http://davispj.com/2010/09/26/new-couchdb-externals-api.html 