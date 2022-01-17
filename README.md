# Introduzione a flutter

Introduzione al SDK Flutter.

## Getting Started

In Flutter ogni elemento che compone l'interfaccia grafica è un Widget.  
Esistono due tipi di Widget:  
->  __StatelessWidget__: (*letteralmente "Widget senza stato"*)  
> Sono Stateless tutti i Widget che non cambiano dopo essere stati "buildati"  

->  __StatefulWidget__: (*letteralmente "Widget con stato"*)  
> Sono Stateful tutti i Widget che possono cambiare dopo essere stati "buildati"  

Il metodo fondamentale alla base della costruzione dei Widget è:
- il metodo __build()__ consiste nel creare un nuovo Widget, composto dai Widget indicati nel return

Tra i Widget più importanti troviamo:
- il Widget __MaterialApp__ identifica il corpo dell'applicazione (contiene tutti gli altri)  
  > Tra gli attributi principali della MaterialApp troviamo:
  > 1. __title__ -> è solo una descrizione usata dal SDK per identificare l'app
  > 2. __Theme__ -> determina gli aspetti visivi della nostra applicazione (font, colori, ...)
  
- il Widget __Scaffold__ fornisce la struttura di base dell'applicazione  
  > Tra gli attributi principali dello Scaffold troviamo:
  > 1. __AppBar__ -> Widget usato per creare una barra "in alto" con il titolo dell'app
  > 2. __body__ -> rappresenta il "corpo" dello scaffold, anch'esso rappresentato da un Widget
    
- il Widget __Text__ consente di creare un testo  

- il Widget __ListView__ consente di creare una lista di Widget (ad esempio di Card)  