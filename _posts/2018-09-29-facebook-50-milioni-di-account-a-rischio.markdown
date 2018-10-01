---
layout: post
title:  "Facebook: 50 milioni di account a rischio. Vulnerabilità e implicazioni."
date:   2018-09-29 19:47:35 +0100
categories: jekyll update
---

![facebook logo](/assets/img/security.png)

Con questo articolo proverò a fare un po' di chiarezza sulla notizia delle ultime ore secondo cui Facebook sarebbe stata coinvolta in una nuova vicenda degna della prima pagina dei più importanti notiziari.

Mark Zuckerberg (Fondatore e CEO di Facebook), in seguito allo scandalo di Cambridge Analitica che aveva coinvolto Facebook a inizio 2018, si trova nuovamente a difendere la reputazione della sua azienda la quale rischia di subire un nuovo danno di immagine dopo la notizia per la quale un gruppo di specialisti sarebbe riuscito a trovare una grave falla di sicurezza nel software dell'azienda di Menlo Park.

È stata l'azienda stessa, mediante Guy Rosen vice direttore del reparto di 'product management', ad annunciare il problema attraverso una news pubblicata nella 'news room' del portale di Facebook [1].

>>On the afternoon of Tuesday, September 25, our engineering team discovered a security issue affecting almost 50 million accounts. We’re taking this incredibly seriously and wanted to let everyone know what’s happened and the 
immediate action we’ve taken to protect people’s security.

Il problema è stato rilevato dal reparto di 'engineering' il pomeriggio dello scorso martedì e sembrerebbe coinvolgere più di 50 milioni di account.
In base a quanto diffuso nello stesso comunicato, la vulnerabilità sembra essere all'interno del codice della funzione 'Vedi come' la quale permette di avere un' anteprima del proprio profilo cosi come lo vedrebbe uno dei nostri contatti.

![facebook logo](/assets/img/button.jpg)


La vulnerabilità permette di ottenere il token di accesso di un qualsiasi utente. Un possibile hacker potrebbe così facilmente ottenere accesso al vostro account senza la necessità di inserire username e password.

Il token di accesso è infatti un codice che viene consegnato al vostro dispositivo una volta effettuato il login. È sostanzialmente un identificativo che vi permette di utilizzare giornalmente Facebook senza dover effettuare l' accesso ogni volta in cui aprite l'applicazione.

Facebook afferma di aver immediatamente rilasciato un fix per rimediare al problema e di aver effettuato in via precauzionale il reset del token di circa 90 milioni di account. Per tale motivo molti di noi si sono trovati con tutti i dispositivi personali disconnessi da Facebook nei giorni scorsi.

Pedro Canahuati, vice presidente del reparto di security e privacy, ha svelato alcuni dettagli tecnici.

>>Earlier this week, we discovered that an external actor attacked our systems and exploited a vulnerability that exposed Facebook access tokens for people’s accounts in HTML when we rendered a particular component of the “View As” feature

Sembrerebbe che la vulnerabilità è il risultato dell'interazione di tre bug distinti presenti nelle funzionalità:

* Vedi come
* Augura buon compleanno a uno dei tuoi amici
* Modulo per il caricamento di un nuovo video.

Sostanzialmente la funzionalità: 'Vedi come' è una funzionalità con il solo scopo di mostrare un'anteprima della propria pagina Facebook.

In tale modalità non è normalmente possibile effettuare nessuna azione che edita il contenuto del proprio profilo: come inserire una foto o un post, ma per una particolare funzione: 'Augura buon compleanno a uno dei tuoi amici' un errore nel codice di Facebook permetteva di effettuare il caricamento di un nuovo video come parte di un post di auguri.

Niente di grave fin qui, se non per il fatto che l'ultima versione del modulo per il caricamento dei video aveva un grave bug, per cui invece di generare il token dell'utente proprietario dell'account generava un token associato all'utente per cui si era scelto di visualizzare l'anteprima.

L'attaccante poteva quindi risalire al token di accesso di un ipotetico Paolo Rossi attraverso i seguenti passaggi:

1) Utilizzare la funzione Vedi come: Paolo Rossi.
2) Aggiungere un post di auguri mediante la funzione augura buon compleanno.
3) Caricare un nuovo video come parte del post di auguri.
4) Utilizzare la funzione 'Ispeziona' del proprio browser per risalire al token dell' utente Mario Rossi.
5) Utilizzare il token per interagire con l'account mediante Facebook API.

### Quali sono le implicazioni di una falla simile ?

Gli attaccanti, appresa la vulnerabilità, avranno probabilmente automatizzato il processo di violazione degli account mediante un bot in modo da raccogliere il maggior numero di token possibili.

A tal punto è stato per possibile risalire ai dati personali appartenenti ad un elevato numero di account.

Dati come la lista degli amici ed altri strettamente personali come:
* Orientamenti sessuali
* Orientamenti politici
* Gusti
* Etc...

Ovvero tutta quella cerchia di dati cosiddetti sensibili per cui le aziende rischiano gravi sanzioni se non opportunamente gestiti.  

Facebook a tal proposito afferma:

>>People’s privacy and security is incredibly important , and we’re sorry this happened. It’s why we’ve taken immediate action to secure these accounts and let users know what happened. 

### In conclusione

Secondo Forbes[1] il fatturato nella Tech industry ha raggiunto un fatturato a 18 zeri. Tre trilioni di dollari nell'ultimo anno. 

Per tale motivo, la complessità dei sistemi informatici sta aumentando esponenzialmente ogni anno.

Gli ingegneri sono sempre più specializzati in una parte di nicchia del sistema, il numero di figure professionali nell'industria informatica e il numero di dati a disposizione delle grandi corporation cresce esponenzialmente di anno in anno, cosi come responsabilità e regolamentazioni nella gestione dei dati si evolvono di conseguenza.

L'aumentare della complessità fa si che il problema della sicurezza e dell' accesso alle informazioni diventa sempre più arduo da affrontare. Trovare una vulnerabilità in un sistema cosi complesso è sempre più come trovare un ago nel pagliaio delle mille interazioni.

Il problema:

>> Quali sono le conseguenze una volta che l'ago cade nelle mani sbagliate?


### Bibliografia

1. https://newsroom.fb.com/news/2018/09/security-update/
2. https://www.forbes.com/sites/forrester/2017/10/18/global-tech-market-will-grow-by-4-in-2018-reaching-3-trillion/#6fa414c712c9

### Glossario

* BUG: Un errore nel codice sorgente di un programma che produce un comportamento inaspettato.
* BOT: Un programma che esegue dei compiti ripetitivi per l'uomo su Internet.
