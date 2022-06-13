Welcome to Flutter Introduction
===============================
-------------------------------

Flutter is a free and open-source software development toolkit (SDK) from Google for building cross-platform apps, released in May 2017. 
Flutter consists of two important parts:  
1) An **SDK** (Software Development Kit): A collection of tools that are going to help you develop your applications. This includes tools to compile your code into native machine code (code for iOS, Android, Windows, Linux, Web and MacOS).  
2) A **Framework** (UI Library based on widgets): A collection of reusable UI elements (buttons, text inputs, sliders, and so on) that you can personalize for your own needs.  

-------------------------------

Flutter is _not_ a language -> Flutter uses *Dart* as its programming language (object-oriented).  
Flutter's widgets exist parallel to native widgets due to its customer user interface rendering
engine - *Skia* - ensuring native performance.  
*IDE* (Integrated Development Environment): XCode for iOS and Android Studio for Android.  

The Flutter architecture consists of three main layers:  
 > 1. The Framework layer is written in Dart and contains the high-level libraries that you’ll use directly to build apps. This includes the UI theme, widgets, layout and animations, gestures and foundational building blocks. Alongside the main Flutter framework are plugins: high-level features like JSON serialization, geolocation, camera access, in-app payments and so on. This plugin-based architecture lets you include only the features your app needs.
 > 2. The Engine layer contains the core C++ libraries that make up the primitives that support Flutter apps. The engine implements the low-level primitives of the Flutter API, such as I/O, graphics, text layout, accessibility, the plugin architecture and the Dart runtime. The engine is also responsible for rasterizing Flutter scenes for fast rendering onscreen.
 > 3. The Embedder is different for each target platform and handles packaging the code as a stand-alone app or embedded module. It is the start point of Flutter application when launched. Embedder enables communication with the underlying operating system, obtains threads for UI, and provides texture. The respoonsibilities of the embedder are lifecycle management, input gestures, windows gestures, windows sizing and platform messages.

In Flutter almost everything that makes up the user interface is a Widget. A widget is simply an instruction that you place within your code and and they are the basic building blocks of a Flutter application's UI. When a widget's state changes, it rebuilds its description, which the framework compares to the previous description to see what changes in the underlying render tree to transition from one state to the next. A widget can be in the form of a button, an image, an icon, or a layout, and placing the widgets together creates a widget tree.  
There are plenty of Flutter widgets available that can be customized to give a native-like feel to the application. Widgets make use of advanced animations and gesture recognition and render it to Skia canvas.  
Skia is the graphic library that server ad the graphic engine for major browsers like Chrome and Firefox, and platforms like Android, ChromeOS and Flutter.

Flutter's rendering process is basically turning widgets into pixels. This is the job of Flutter's multi rendering pipeline. Flutter handles the input, runs animation, builds the widget tree, lays out the render objects, paint the render objects, and compiles everything into a single image. Whenever a part of the widget tree receives user input, animation, or any other changes, Flutter enters the build phase. In this phase, the framework reconstructs the widget tree by calling the necessary build methods.  

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

- __Text__  
- __SafeArea__  
- __Image__  
- __ListView__  
- __SizedBox__  
- __Card__  
  
  > data model -> refers to classes - such as Car or Student
