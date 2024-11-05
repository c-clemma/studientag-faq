# studientag-faq
Informationsflyer mit den häufigsten Fragen, die in Tübingen am Studieninfotag zur Informatik gestellt werden

## Inhalt des Repos
- `faq_flyer.tex` ist die Hauptdatei, die kompiliert wird. Eingebunden werden:
- `/inhalte`, hier sind CSV Dateien mit den Aufstellungen nach Studienschwerpunkt 
- `/poster`, hier sind die Vorderseiten mit Informationstext, die in `/inhalte` hinterlegten CSVs werden hier in Tortendiagramme verwandelt. Außerdem befinden sich hier die sources für die Tabellen.
- `/faq`, hier befinden sich für jeden Studiengang die FAQ.

## Build
Dieses Repo verfügt über ein `Makefile` und ist auf `pdflatex` angewiesen.

```
Build the Studientag FAQ flyers

 make
   build the flyer
 make clean
   remove buildfiles in out/
 make help
   show this message
 make all_posters
   build posters/"plakate" only
```

## Hinweise zum Druck
Es werden immer zwei Studiengänge auf eine A4-Seite gedruckt. Die Seiten sind so angelegt, dass man duplexen kann. 
- Seitenformat: A4 Querformat
- Duplex: **kurze** Seite 

So wird zum jeweiligern Studiengang auf der Rückseite die zugehörige FAQ gedruckt. Bitte die Reihenfolge innerhalb von `faq_flyer.tex` nicht verändern!
