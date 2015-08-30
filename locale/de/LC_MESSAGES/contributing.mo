��          �      �        #   	  :   -     h  "   x  �   �     �  5  �  {   �  j   Q  �   �     }  �  �  �   C  �   	  �  �	  �   2  m   �  �   ^  -   �  �   !  #   �       �    4   �  E   �  !   7  !   Y  �   {  (   r  o  �  �        �  �              �     �   �  s  �  �   '  x   �  �   ]  6     �   U  9   A     {                                   
                                       	                              And then follow all the other ones. And we follow along with the other code samples. We turn:: And we're done! Contributing to this Documentation First we should determine where we want to document this inside the documentation. We can look through http://docs.couchdb.org/en/latest/ for inspiration. The `JSON Structure Reference`_ looks like a fine place to write this up. First, we commit our changes:: Go to https://github.com/apache/couchdb and click the "fork" button in the top right. This will create a fork of CouchDB in your GitHub account. Mine is `janl`, so my fork lives at https://github.com/janl/couchdb. In the header, it tells me me my "GitHub Clone URL". We need to copy that and start a terminal: I cleaned up the text a little but to make it sound more like a documentation entry as opposed to a post on a mailing list. I'm opening the whole CouchDB source tree in my favourite editor. It gives me the usual directory listing: If you don't have a GitHub account yet, it is a good time to get one, they are free. If you don't want to use GitHub, there are alternate ways to contributing back, that we'll cover next time. Into:: Let's try and find the source file that builds the file http://docs.couchdb.org/en/latest/json-structure.html -- we are in luck, under `share/doc/src` we find the file `json-structure.rst`. That looks promising. `.rst` stands for ReStructured Text (see http://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html for a markup reference), which is an ascii format for writing documents, documentation in this case. Let's have a look and open it. Next, we go back to our GitHub page https://github.com/janl/couchdb and click the "Pull Request" button. Fill in the description with something useful and hit the "Send Pull Request" button. Now we paste in the rest of the main email of the thread. It is mostly text, but it includes some code listings. Let's mark them up. We'll turn:: The current state includes mostly tables describing the JSON structure (after all, that's the title of this chapter), but some prose about the number representation can't hurt. For future reference, since the topic in the thread includes views and different encoding in views (as opposed to the storage engine), we should remember to make a note in the views documentation as well, but we'll leave this for later. The documentation lives in the CouchDB source tree. We'll start by forking and closing the CouchDB GitHub mirror. That will allow us to send the contribution to CouchDB with a pull request. The documentation sources live in `share/doc/src`, you can safely ignore all the other files and directories. The next step would be to validate that we got all the markup right. I'll leave this for later. For now we'll contribute our change back to CouchDB. Then we push the commit to our CouchDB fork:: We see ascii tables with some additional formatting, all looking like the final HTML. So far so easy. For now, let's just add to the bottom of this. We can worry about organising this better later. We start by adding a new headline:: into:: Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-11-18 09:39+0000
PO-Revision-Date: 2013-11-28 09:41+0000
Last-Translator: Andy <andywenk@apache.org>
Language-Team: LANGUAGE <LL@li.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Pootle 2.5.0-rc1
X-POOTLE-MTIME: 1385631699.0
 Das machen wir schliesslich auch für alle anderen.  Das Gleiche machen wir mit den anderen Code-Beispielen. Wir ändern:: Und damit haben wir es geschafft! An dieser Dokumentation mitwirken Zuerst sollten wir jetzt herausfinden, wo wir dies in der Dokumentation festhalten wollen. Dabei können wir uns http://docs.couchdb.org/en/latest/ als Inspiration ansehen. Der Bereich `JSON Structure Reference`_ sieht nach einem guten Platz aus. Zuerst commiten wir unsere Änderungen:: Klicke auf https://github.com/apache/couchdb rechts oben den "Fork"-Button. Damit wird ein Fork (Gabelung) von CouchDB in deinem GitHub Konto erstellt. Mein account is `janl` und deshalb ist mein Fork unter https://github.com/janl/couchdb zu finden. Im Kopfbereich wird mir meine "GitHub Clone URL" angezeigt. Diese müssen wir kopieren und dann ein Terminal starten: Ich habe den Text ein bisschen angepasst, damit dieser mehr wie eine Dokumentation klingt im Gegensatz zu einem Post auf einer Mailing-List. Ich öffne den gesamten CouchDB Quellcode in meinem Lieblings-Editor. Dort wird mir die bekannte Verzeichnisstruktur angezeigt: Wenn Du noch keinen GitHub-Account hast ist jetzt der richtige Moment einen zu erstellen. Die Accounts sind kostenfrei. Wenn Du GitHub nicht nutzen willst gibt es alternative Wege um etwas beizusteuern. Das werden wir später betrachten. zu:: Finden wir also heraus, welches die Datei ist, aus der die Datei http://docs.couchdb.org/en/latest/json-structure.html erstellt wird -- da haben wir Glück, denn in  `share/doc/src` finden wir gleich `json-structure.rst`.  Das sieht vielversprechend aus. `.rst` steht für ReStructured Text (siehe http://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html für die Markup Dokumentation), das ein ASCII Format ist um Dokumente, in diesem Fall die Dokumentation, zu schreiben. Lass uns die Datei öffnen und reinsehen. Dann gehen wir wieder in uner GitHub Repositroy unter https://github.com/janl/couchdb und klicken den "Pull Request" button. Fülle dort die Beschreibung mit sinnvollen Informationen aus und klicke dann den "Send Pull Request". Jetzt fügen wir den Rest der E-Mail aus der Diskussion ein. Das ist hauptsächlich Text, aber es gibt auch ein paar Quellcode-Listings. Lass uns diese in Markup einbetten. Wir ändern:: Der aktuelle Stand beinhaltet hauptsächlich Tabellen, die die JSON-Struktur beschreiben (schließlich ist das ja der Titel dieses Dokumentes). Da der Bereich Views und unterschiedliche Encodings in Views enthalten ist (im Gegensatz zur Storage-Engine), sollten wir auch in der Dokumentation für Views einen Hinweis einfügen. Damit beschäftigen wir uns aber später.   Die Dokumentation ist im CouchDB Quellcode beheimatet. Wir starten damit den CouchDB GitHub Mirror zu forken. Das erlaubt uns unseren Beitrag zu CouchDB mit einem Pull-Request zu schicken. Die Dateien für die Dokumentation sind in `share/doc/src` zu finden. Du kannst alle anderen Dateien einfach ignorieren, Der nächst wäre dann zu prüfen, ob das Markup korrekt ist. Das spare ich erstmal für später auf. Hier geben wir unsere Änderungen erstmal als Beitrag zu CouchDB and das Projekt zurück.  Dann pushen wir unseren commit in den CouchDB-branch:: Wir sehen hier ASCII Tabellen mit einigen extra Formatierungen. Das sieht ganz nach dem resultierenden HTML aus. So weit so gut. Lass uns momentan einfach nur einen Teil unten hinzufügen. Das besser zu organisieren machen wir später. Fangen wir damit an, eine neue Überschrift einzufügen:: zu:: 