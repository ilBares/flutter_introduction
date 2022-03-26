## Welcome to Flutter Introduction

Flutter is a software development toolkit (SDK) from Google for building cross-platform apps.  
Flutter is _not_ a language -> Flutter uses *Dart* as its programming language (object-oriented).  
Flutter's widgets exist parallel to native widgets due to its customer user interface rendering
engine - *Skia* - ensuring native performance.  
*IDE* (Integrated Development Environment): XCode for iOS and Android Studio for Android.  

The Flutter architecture consists of three main layers:  
 > 1. The Framework layer is written in Dart and contains the high-level libraries that you’ll use directly to build apps. This includes the UI theme, widgets, layout and animations, gestures and foundational building blocks. Alongside the main Flutter framework are plugins: high-level features like JSON serialization, geolocation, camera access, in-app payments and so on. This plugin-based architecture lets you include only the features your app needs.
 > 2. The Engine layer contains the core C++ libraries that make up the primitives that support Flutter apps. The engine implements the low-level primitives of the Flutter API, such as I/O, graphics, text layout, accessibility, the plugin architecture and the Dart runtime. The engine is also responsible for rasterizing Flutter scenes for fast rendering onscreen.
 > 3. The Embedder is different for each target platform and handles packaging the code as a stand-alone app or embedded module.

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
- __SizedBox__ black view with a fixed size.
- __Card__ Widget defines an area of UI where you've laid out related information about a specific 
  entity.
  > Among the most important attributes of Scaffold there are:
  > 1. __elevation__ -> determines how high off the screen the cars is (shadow changes).
  > 2. __shape__ -> handles the shape of the card.
  
  > data model -> refers to classes - such as Car or Student
