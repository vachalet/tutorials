---
layout: post-layout.njk
title: "Goblins: Runde 5"
date: 2024-04-14
tags: ['post','tutorial','goblins','turn-36']
---
# Runde 5
## Die Auswertung
Auswertung Nummer 5 ist da und neben den bekannten "Hinweisen" sehen wir im nr-Report zwei neue Abschnitte: 
   
                                       Hinweise

    Deine Partei ist noch die nächsten 2 Wochen immun gegen Angriffe.

                               Rohstoffe und Produktion

    Falmerschmiede (5) in Kodgur (0,0) produziert 1 Speer.
    Falmerschmiede (21) in Kodgur (0,0) produziert 1 Speer.
    Falmerschmiede (22) in Kodgur (0,0) produziert 1 Speer.
    Falmerschmiede (23) in Kodgur (0,0) produziert 1 Speer.
    Falmerschmiede (24) in Kodgur (0,0) produziert 1 Speer.
    Falmerschmiede (25) in Kodgur (0,0) produziert 1 Speer.
    Bergfalmer (12) in Kodgur (0,0) produziert 1 Pferd.
    Waldfalmer (10) in Kodgur (0,0) produziert 6 Holz.

                                 Wirtschaft und Handel

    Falmer mit roter Nase (11) verdient in Kodgur (0,0) 20 Silber durch
      Unterhaltung.

Hier werden wir über die Wirtschaft unseres aufstrebenden Goblinvolks informiert. Wir haben erfolgreich 6 Speere gebaut, 1 Pferd gefangen, 6 Bäume gefällt und 20 Silber verdient. Sehr gut. 

Da die Zahl der Einheiten stetig wächst, gucken wir uns den Report nun in Magellan an. Wenn man den neuen Report zum letzten Report hinzufügt, hebt Magellan die Talentaufstiege in rot hervor:

![Magellan Runde 5](./05_Magellan_Einheiten.png "Ansicht des Verzweigungsbaume aller Einheiten in Kodgur")

Die sechs Stangenwaffenschüler sind alle aufgestiegen, einer sogar direkt auf Stufe 2. Außerdem ist Falmerkrieger (to2L) auf Steuereintreiben 3 aufgestiegen. Das ist sehr praktisch, weil wir mit ihm jetzt Rekruten und Einheiten mit Steuereintreiben 1 lehren können.
Auch bemerkenswert ist, dass unser Bergfalmer durch eine einzige Anwendung (MACHE Pferd) direkt von Stufe 1 auf Pferdedressur 2 aufgestiegen ist. Da hatten wir mal richtig Glück! Und unser Ringträger ist endlich auf Tarnung 4 aufgestiegen und könnte jetzt klauen, egal ob er erwischt wird oder nicht ([Goblinfähigkeit](https://wiki.eressea.de/index.php/Rassen#Goblins)).

Und auch der Ork steht noch immer in unserem schönen Wald.


## Der grobe Plan

Ab jetzt wird Silber verdient. Mit 6 Treibern auf Stufe 2 verdienen wir 240 Silber. Und genau da machen wir weiter. Wir haben Lehrer und wir haben eine laufende Waffenproduktion, also werden wir jetzt jede Runde neue Steuereintreiber rekrutieren, ausbilden und ausrüsten. Denn noch geben wir jede Runde mehr aus, als wir einnehmen.

Außerdem planen wir jetzt die Erkundung der Welt als nächstes Etappenziel ein. Da wir auch schon Pferde machen können, werden wir auch hier wieder leicht aufholen, was andere Völker zu Fuß schon aufgeklärt haben. 


## Die Befehle

Die Schmiede verteilen Ihre Speere und bekommen den Auftrag weitere zu bauen, z.B.

    EINHEIT 21;		Falmerschmiede [1,20$]
    ;bestaetigt
    MACHE Speer
    GIB 9 1 Speer

Und entsprechend bei den Steuereintreibern setzen wir den Befehl `TREIBE`:

    EINHEIT 9;		Falmerkrieger [1,20$]
    ;bestaetigt
    TREIBE 
    !@BEWACHE

Da die Einheiten jetzt ein Waffentalent berherrschen und eine passende Waffe bekommen können sie außerdem die Region [bewachen](https://wiki.eressea.de/index.php/BEWACHE). Das verhindert das andere Völker ohne unsere Erlaubnis hier z.B. Bauern rekrutieren oder Bäume fällen. Außerdem sind damit alle Kämpfe für uns kurz. Das bedeutet, dass wir auch wenn wir angegriffen werden, noch lange Befehle ausführen können. Insbesondere können wir noch Steuern eintreiben und so Silber verdienen, damit uns nicht das Silber ausgeht und wir hungern.

Das ist leider ein sehr gefährlicher Anfängerfehler, wenn man die eigene Region, in der man Silber generiert nicht bewacht. Ein fremder, unbewaffneter Scout könnte dann einfach alle unsere Einheiten attackieren. Wenn man nicht selbst bewacht ist der Kampf für alle attackierten Einheiten lang, d.h. es können keine anderen langen Befehle gemacht werden. Besonders tragisch, wenn man mit dem Silber auf Kante plant und dann die Einnahmen aus UNTERHALTE und TREIBE ausbleiben.

Das `@` vor dem `BEWACHE` ist eigentlich überflüssig. Denn wenn der Befehl gesetzt wurde, wird die Einheit solange die Region bewachen, bis man `BEWACHE NICHT` befiehlt oder sich die Einheit in eine andere Region bewegt. Denn dadurch wird die Bewachung automatisch beendet. Damit wir nicht vergessen, das Bewachen in den neuen Region wieder zu aktivieren, setzen wir ein `@` davor. Dadurch wird der Befehl [jede Runde](https://wiki.eressea.de/index.php/Befehl#Kurze_Befehle_dauerhaft_ausf%C3%BChren) wieder in die Zugvorlage übernommen. Da man direkt nach einer Bewegung aber nicht sofort bewachen kann, würde man eine Fehlermeldung bekommen. Außerdem gilt aktuell noch dass wir immun gegen Angriffe sind. Daher können wir solange auch noch nicht bewachen und würden auch daher eine Fehlermeldung bekommen. Durch das vorangestellte `!` können wir jegliche [Fehlermeldung unterdrücken](https://wiki.eressea.de/index.php/Befehl#Fehler_unterdr%C3%BCcken). Normalerweise will man Fehlermeldungen sehen, um den Fehler zu beheben. Aber hier wollen wir die Fehlermeldung ja ganz gezielt ignorieren. 

Die 5 Treibern, die diese Runde auf Stufe 2 aufgestiegen sind, werden wir mit `LERNE AUTO Stangenwaffen` lernen lassen und gleichzeitig wird auch unser Stangenwaffenlehrer Falmerkrieger (7) `LERNE AUTO Stangenwaffen` setzen. Dadurch profitieren die 5 Treiber von einem Lehrer, und der Lehrer selbst hat wieder eine 5/10 Chance auf einen eigenen Lernversuch.

Ganz ähnlich werden mit den Steuereintreibern verfahren. Die Einheit die diese Runde auf Stufe 3 aufgestiegen ist, wird direkt zum Auto-Lehrer und bekommt die Befehle 

    EINHEIT to2L;		Falmerkrieger [1,20$]
    ;bestaetigt
    LERNE AUTO Steuereintreiben
    // neuer Steuer Lehrer, weil zu erst T3

Die vier Treiber mit Steuereintreiben 1 werden alle `LERNE AUTO Steuereintreiben` als Befehl bekommen. Außerdem erzeugen wir zwei neue Temp-Einheiten, die jeweils eine Person rekrutieren und auch `LERNE AUTO Steuereintreiben` als Befehl bekommen.

Eine weitere Temp-Einheit wird von unserem Tarner erstellt und auch dieser soll von `LERNE AUTO` profitieren.   

    EINHEIT q8hq;		Falmerschleicher [1,20$]
    ;bestaetigt
    LERNE AUTO Tarnung
    // erstmal bis T4 lernen...
    MACHE TEMP 31
     BENENNE EINHEIT "Falmerschleicher"
     REKRUTIERE 1
     GRUPPE
     KÄMPFE FLIEHE
     LERNE AUTO Tarnung
     DEFAULT "LERNE Reiten"
     // soll dann scouten und mal die Insel erkunden - vermutlich mit RdU. Muss \
     ja nicht jeder wissen, dass wir vor Ort sind...
     ;bestaetigt_temp
    ENDE

Diese neue Einheit lernt diese Runde Tarnung und bekommt schonmal den neuen [Default](https://wiki.eressea.de/index.php/DEFAULT)-Befehl definiert. Sie soll als nächstes Reiten lernen und dann werden wir sie mit dem Ring der Unsichtbarkeit (RdU) über die Insel jagen. So können wir aufklären, ohne dass die Nachbarn wissen, dass wir ihre Regionen sehen. Neben dem 50 Silber für Rekrutierungskosten und Unterhalt übergeben wir daher auch schon das frisch gefangene Pferd. 

    EINHEIT 12;		Bergfalmer [1,20$]
    ;bestaetigt
    LERNE Burgenbau
    // Eisen schonmal keins bis Stufe 4, denn man sieht Talent x2 Schichten
    // nope, auch keine Steine bis T2
    // dann machen wir halt erstmal Pferde...
    // Glück, gehabt. Der PFerdefänger ist mit einer Talentanwendung direkt au\
    f T2 aufgestiegen!
    GIB TEMP 31 1 Pferd

Unser Alleskönner Bergfalmer (12) wird jetzt außerdem auf Burgenbau umschulen, dann können wir hier nächste Runde mit den zwei Steinen einen Handelsposten errichten. 

Der Rest macht weiterhin dasselbe. Die Holzfäller machen Holz für die Schmiede, der Wahrnehmer lernt, und der Falmer mit der roten Nase unterhält weiter.

Die Befehle gehen zum Server und wir sind für diese Runde fertig.

## Diplomatie

Von unseren Orknachbarn haben wir bisher nichts gehört. Ob das ein gutes oder schlechtes Zeichen ist, wird die Zukunft zeigen. Wir bleiben dem Ork gegenüber jedenfalls erstmal skeptisch.