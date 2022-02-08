# Flutter Introduction

SDK Flutter Introduction.

## Getting Started

How to create a new Flutter application Step-by-Step:  
  > 1. Write _import 'material...'_ and press Enter -> needed to use Material Widgets (button, ...).
  > 2. _void main() => runApp(YourAppName())_ -> runApp runs YourAppName (you need to "generate
       it" as a class that extends StatelessWidget -> see 3.).
  > 3. Create a new class - YourAppName - that extends StatelessWidget and implement build method.
  > 4. In the build method write "return MaterialApp(...);".
  > 5. Inside "MaterialApp(...)" define the attribute _home_ -> _home: Scaffold()_ (which means "
       create a Scaffold and insert it in the MaterialApp home attribute").

Flutter is a software development toolkit (SDK) from Google for building cross-platform apps.  
Flutter is _not_ a language -> Flutter uses *Dart* as its programming language (object-oriented).  
Flutter's widgets exist parallel to native widgets due to its customer user interface rendering
engine - *Skia* - ensuring native performance.  
*IDE* (Integrated Development Environment): XCode for iOS and Android Studio for Android.  
  
In Flutter almost everything that makes up the user interface is a Widget.  
There are two main types of Widget:  
->  __StatelessWidget__: (*"Widget without state"*)  
> a Stateless Widget doesn't change after you build it.  

->  __StatefulWidget__: (*"Widget with state"*)  
> a Stateful widget change his state during the lifetime of the Widget.  

__main()__ is the entry point for the code when the app launches.  
__runApp()__ main method that tells Flutter which is the top-level widget for the app.  

- a Widget's __build()__ method is the entry point for composing together other widgets to make a
  new widget.

Most important widgets:  
- __MaterialApp__ is the predefined widget in Flutter  
  > Among the most important attributes of Material there are:
  > 1. __title__ -> description that devices uses to identify the app - the UI won't dispay this.
  > 2. __theme__ -> determines visual aspects like colors and fonts.
  
- __Scaffold__ widget provides the high-leve structure for a screen.  
  > Among the most important attributes of Scaffold there are:
  > 1. __AppBar__ -> gets a title property by using a Text widget.
  > 2. __body__

- __Text__ ...
- __SafeArea__ ...
- __Image__ ...
- __ListView__ ...
- __SizedBox__ blank view with a fixed size.
- __Card__ Widget defines an area of UI where you've laid out related information about a specific 
  entity.
  > Among the most important attributes of Scaffold there are:
  > 1. __elevation__ -> determines how high off the screen the cars is (shadow changes).
  > 2. __shape__ -> handles the shape of the card.
  

> data model -> refers to classes - such as Car or Student


