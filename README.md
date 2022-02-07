# Flutter Introduction

SDK Flutter Introduction.

## Getting Started

Flutter is a software development toolkit (SDK) from Google for building cross-platform apps.  
Flutter is _not_ a language -> Flutter uses *Dart* as its programming language (object-oriented).  
Flutter's widgets exist parallel to native widgets due to its customer user interface rendering
engine - *Skia* - ensuring native performance.  
*IDE* (Integrated Development Environment): XCode for iOS and Android Studio for Android.  


In Flutter almost everything that makes up the user interface is a Widget.  
There are two main types of Widget:  
->  __StatelessWidget__: (*"Widget without state"*)  
> a Stateless Widget doesn't change after you build it  

->  __StatefulWidget__: (*"Widget with state"*)  
> a Stateful widget change his state during the lifetime of the Widget  

__main()__ is the entry point for the code when the app launched.  
__runApp()__ method (contained in the main) tells Flutter which is the top-level widget for the app.  

- a Widget's __build()__ method is the entry point for composing together other widgets.

Most important widgets:  
- __MaterialApp__ is the predefined widget in Flutter  
  > Tra gli attributi principali della MaterialApp troviamo:
  > 1. __title__ -> è solo una descrizione usata dal SDK per identificare l'app
  > 2. __Theme__ -> determina gli aspetti visivi della nostra applicazione (font, colori, ...)
  
- il Widget __Scaffold__ fornisce la struttura di base dell'applicazione  
  > Tra gli attributi principali dello Scaffold troviamo:
  > 1. __AppBar__ -> Widget usato per creare una barra "in alto" con il titolo dell'app
  > 2. __body__ -> rappresenta il "corpo" dello scaffold, anch'esso rappresentato da un Widget
    
- il Widget __Text__ consente di creare un testo  

- il Widget __ListView__ consente di creare una lista di Widget (ad esempio di Card)  