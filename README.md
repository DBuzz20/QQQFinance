# QQQFinance
Progetto per il laboratorio di Architetture Software e Sicurezza Informatica

Corso di laurea in Ingegneria Informatica e Automatica, Sapienza Università di Roma.
## Descrizione del progetto
QQQFinance è un tool per la finanza personale, che permette all'utente di trovare, studiare e monitorare titoli azionari d'interesse tra quelli contenuti nell'indice Nasdaq-100 tramite 2 feature principali: lo screener ed il wallet.
Lo screener permette di trovare tra tutte le aziende presenti nell'indice, quelle che soddisfano determinati parametri fondamentali selezionati dall'utente.
Una volta trovati questi titoli, l'utente loggato potrà monitorarli aggiungendoli al proprio wallet personale, con quest'ultimo che potrà poi essere modificato nell’apposita pagina.

Ogni utente avrà poi la possibilità di rendere pubblico o meno il proprio profilo, e di conseguenza anche la composizione del proprio wallet, così da poter condividere con altri utenti che visitano il suo profilo, le proprie idee e strategie d’investimento.

Inoltre, ogni azione ha una sua pagina dedicata sulla quale è possibile consultare i valori di tutti i parametri presenti nell'app, interagire col suo grafico di prezzo, e inserire/consultare i commenti nell'apposita sezione sottostante.

E’ poi implementato un sistema di notifiche automatico, che, in caso un titolo detenuto in portafoglio subisca una variazione di prezzo di +/- 5%, invia una mail all’utente proprietario del portafoglio, per informarlo dell’oscillazione.

Infine, sono disponibili una pagina che presenta le ultime notizie sul mondo della finanza, aggiornate con cadenza oraria, ed una pagina per contattare gli sviluppatori e/o segnalare utenti, che invia automaticamente una mail all'invio di una form.
## Lanciare l'app
### Prerequisiti
Per poter utilizzare l'app è necessario aver installato `ruby-3.0.0`, come indicato nel Gemfile.
### Installazione
1. Clonare il seguente repository e installare tutte le gemme necessarie con `bundle install`
2. Inizializzare il database con `rails db:migrate` e `rails db:seed`
3. Lanciare il server tramite `rails server` dal terminale

Fatto ciò, l'app è raggiungibile all'indirizzo URL `localhost:3000/`.

Il server può essere poi spento in qualsiasi momento digitando `Ctrl+C` sul terminale.
## Lanciare i test
Per lanciare i test di accettazione di `cucumber`,usare
```
bin/rake cucumber
```
mentre per lanciare i test d'unità `rspec`
```
rspec
```
## Api utilizzate
* Yahoo! Finance API - aggiornamento azioni
* NewsData API - aggiornamento notizie
* Trading View API - grafici azioni
## Sviluppatori
* [*Davide Buzzichini*](https://github.com/DBuzz20)
* [*Leonardo Perruzza*](https://github.com/PerruzzaLeonardo)
* [*Marco Totaro*](https://github.com/totaro00)
* [*Matteo Zamponi*](https://github.com/matzamp)
