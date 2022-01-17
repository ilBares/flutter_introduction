# Introduzione a flutter

Introduzione al SDK Flutter.

## Getting Started

In Flutter esistono due tipi di Widget:  
->  __StatelessWidget__: (*letteralmente "Widget senza stato"*)  
    Sono Stateless tutti i Widget che non cambiano dopo essere stati "buildati"  

->  __StatefulWidget__: (*letteralmente "Widget con stato"*)  
    Sono Stateful tutti i Widget che possono cambiare dopo essere stati "buildati"  

Alcuni elementi di base sono:  
- il Widget __MaterialApp__ identifica il corpo dell'applicazione (contiene tutti gli altri)
- il metodo __build()__ consiste nel creare un nuovo Widget, composto dai Widget indicati nel return
- il __Theme__ determina gli aspetti visivi della nostra applicazione (font, colori, ...)
- il __title__ di _MaterialApp_ e' solo una descrizione usata dal SDK per identificare l'app