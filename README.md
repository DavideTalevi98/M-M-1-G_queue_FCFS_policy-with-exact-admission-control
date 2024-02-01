# Sistema di Simulazione

Questo progetto implementa un sistema di simulazione di code di coda utilizzando OMNeT++, un framework di simulazione basato su eventi discreti.

## Descrizione

Il sistema simula il comportamento di un sistema composto da server, code passive e job. I job arrivano al sistema, vengono messi in coda e quindi serviti dal server se disponibile e 
se il job ha abbastanza tempo di vita da aspettare che torni disponibile. 

## Struttura del Progetto

Il progetto è strutturato nei seguenti moduli:

- `PassiveQueue`: Rappresenta una coda passiva in cui i job arrivano e aspettano di essere serviti.
- `Server2`: Rappresenta un server che serve i job dalla coda passiva.
- `Job2`: Rappresenta un job che attraversa il sistema di code di coda.

## Requisiti di Sistema

- OMNeT++ 5.6 o versione successiva

## Come Eseguire la Simulazione

1. Clonare il repository su una macchina con OMNeT++ installato.
2. Aprire il progetto OMNeT++ nel tuo IDE OMNeT++ preferito.
3. Importare e compilare il progetto.
4. Eseguire la simulazione utilizzando il IDE o da riga di comando.

## Risultati della Simulazione

Durante l'esecuzione della simulazione, vengono raccolti dati relativi al tempo di permanenza dei job nel sistema, al numero medio di utenti serviti e non serviti, e altro ancora. Questi risultati possono essere analizzati utilizzando strumenti come Pandas in Python.

## Autore

Questo progetto è stato sviluppato da Davide talevi come parte di corso di Simulazione di sitemi della LM Informatica dell'università di Bologna.

## Licenza

Questo progetto è distribuito con la licenza MIT.
