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

The Flutter architecture consists of three main layers:  
 > 1. The Framework layer is written in Dart and contains the high-level libraries that you’ll use directly to build apps. This includes the UI theme, widgets, layout and animations, gestures and foundational building blocks. Alongside the main Flutter framework are plugins: high-level features like JSON serialization, geolocation, camera access, in-app payments and so on. This plugin-based architecture lets you include only the features your app needs.
 > 2. The Engine layer contains the core C++ libraries that make up the primitives that support Flutter apps. The engine implements the low-level primitives of the Flutter API, such as I/O, graphics, text layout, accessibility, the plugin architecture and the Dart runtime. The engine is also responsible for rasterizing Flutter scenes for fast rendering onscreen.
 > 3. The Embedder is different for each target platform and handles packaging the code as a stand-alone app or embedded module.
  
In Flutter almost everything that makes up the user interface is a Widget.  
There are two main types of Widget:  
->  __StatelessWidget__: (*"Widget without state"*)  
> a Stateless Widget doesn't change after you build it. Data can only change externally (with input data).   
```dart
class MyStlessWidget extends StatelessWidget {
  const MyStlessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

->  __StatefulWidget__: (*"Widget with state"*)  
> a Stateful widget change his state during the lifetime of the Widget. Data can change also internally.  
```dart
class MyStfulWidget extends StatefulWidget {
  const MyStfulWidget({Key? key}) : super(key: key);
  @override
  _MyStfulWidgetState createState() => _MyStfulWidgetState();
}
class _MyStfulWidgetState extends State<MyStfulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

__main()__ is the entry point for the code when the app launches.  
__runApp()__ main method that tells Flutter which is the top-level widget for the app (everything in
Flutter start with a widget -> runApp() takes the root Widget).  

- a Widget's __build()__ method is the entry point for composing together other widgets to make a
  new widget. Every StatelessWidget must override build() method.

*Stateless Widgets*:  
- *Layout Widgets* -> help with the arrangement of widgets. Examples:  
> - Column
> - Row
> - Stack
> - Container
> - SizedBox
> - Padding
- *Display Widgets* -> handle what the user sees onscreen. Examples:
> - Text
> - Image
> - Button

__MaterialApp__ is the predefined widget in Flutter (give a Material Design system look and feel)  
  > Among the most important attributes of Material there are:
  > 1. __title__ -> description that devices uses to identify the app - the UI won't display this.
  > 2. __theme__ -> determines visual aspects like colors and fonts.
  
__Scaffold__ widget provides the high-leve structure for a screen.  
  > Among the most important attributes of Scaffold there are:
  > 1. __appBar__ -> gets a title property by using a Text widget.
  > 2. __body__
  > 3. __bottomNavigationBar__
  > 4. __floatingActionButton__
  > 5. __snackBar__

- __Text__ ...
- __SafeArea__ keeps the app from getting too close to the operating system interfaces (notch, ...)
- __Image__ _Image.asset('path')_ or _Image(image: AssetImage('path'))_ with local images.
  > To use local images, in pubspec.yaml you have to add:  
  > assets:  
  >   - assets/  
    
- __ListView__ ...
- __SizedBox__ view with a fixed size.
- __Card__ Widget defines an area of UI where you've laid out related information about a specific 
  entity.
  > Among the most important attributes of Scaffold there are:
  > 1. __elevation__ -> determines how high off the screen the cars is (shadow changes).
  > 2. __shape__ -> handles the shape of the card.

- __Expanded__ Widget expands to fill the available space.


*Stateful Widgets*:  
- __GestureDetector__ detects gestures (_onTap()_, ...)
  > GestureDetector's child widget defines the area where the gesture is active.

> data model -> refers to classes - such as Car or Student  

> as you build large-scale apps, you'll start to compose a staircase of widgets. Widgets composed
> of other wodgets can get really long and messy. It's a good idea to break your widgets into
> separate files for readability.    

> __Theme.of(context)__ returns the nearest Theme in the widget tree. If the widget has a defined
> Theme, it return that. Otherwise, it returns the app's theme.  

> __setState()__ notifies the framework that the state of the object has changed, then rebuilds the
> widget internally.  


FLutter does NOT use Platform Primitives.  
Flutter directly controls every point which is drawn. 

Material is a Design System created by Google.  

All the Flutter Code is compiled (React is partly compiled).  

To load pubspec.yaml packages run:
> "flutter packages get"  

# Folder DESCRIPTION
> ".idea" folder holds some configurations for Android Studio.
> "android" holds a completely Android project (passive folder for the most time).
> "build" folder holds the output of the Flutter applications (nothing to change in there).
> "ios" folder holds a completely IOs project (passive folder for the most time).
> "lib" folder is the one where we will write code.
> "test" allows us to test our code.
> ".gitignore" helps when you are using git.
> ".metadata"
> ".packages" (packages and dependencies automaticaly genered by the SDK).
> ".iml"
> "pubspeck.yaml" file that allows you to manage dependencies (config file).
> "pubspeck.lock"

# GIT
https://academind.com/tutorials/git-the-basics 

# Dart
>Property: variable inside a class
>When you initialize immediately a variable you should use "var" instead of specific type.

# FUNCTIONS
>passing a function: "functionName" (without parentesis, or it will be executed - in that way you pass a pointer to the function)
>anonymous function: () {}
>immediately executed anonymous function: () {} ()

```dart
...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
```
"..." separates the list into single elements (so you can use it as a List of Widgets in Column, Row, ...)

### Final and Const
> __final__ : runtime constant, you have to use it when the values does not change but you don't know what the final value would be while writing the code (it depends, for example, by the instance).
> __const__ : compile time constant
