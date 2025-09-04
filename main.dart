import 'package:flutter/material.dart';

/* the purpose of this syntax is to import the flutter material design library
widgets and tools for building a material design UI(google design system)

import - is a dart keyword to include external libraries


package:flutter/material.dart - this syntax is refers to the material design package include
with flutter,  containing widgets.

this is essential for building Flutter Apps w/ a standard UI

 */

void main(){
  runApp( const MyApp());
}

/*
the entry point of the flutter app

void main() - main function, starting point of any dart program

runApp() - is a flutter function that initialize the app and attache the root widget (MyApp) to the screen

const MyApp() - creates an instance of the MyApp class, marked as a constant

 */


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override //indicates this method override the "build" method from StatelessWidget
Widget build( BuildContext context) {
    return MaterialApp(

    title: 'Hello Flutter',
    theme: ThemeData(
        primarySwatch: Colors.blue,
),
    home: const MyHomePage(),
    );

}
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: const Text('Act.1')
    ),
      body: Center(
          child : Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [
              Image.network(
                'https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRW1eCiIGFIACw8OBOA0uWRvLOns4LhyWLn79qUXNAqGeqPnQCWxiEPyaFpq47QRug3fa3h3-3J7Xi0fflQ',
                width: 500,
                height: 500,
              ),
              const SizedBox(height: 20),
              const Text (
                'Title: Hello Love Goodbye',
                style: TextStyle(fontSize: 27),
              ),
              const Text (
                'Synopsis: A bartender and a domestic helper of Filipino origin living in Hong Kong find themselves falling in love, but they each have different plans for their future.',
                style: TextStyle(fontSize: 24)

              )
            ]
          ),
        ),
     );
}
}

/*
define as a root widget or the main container

class MyApp - it declares a custom class that extends StatelessWidget

StatelessWidgets - flutter base class for widget that don't change state (static UI)

const MyApp({super.key}) - constructor, w/ super.key passing an optional "key"

parameter to the parent StatelessWidget

keys are used to identify the widgets uniquely.

const - ensure that the constructor creates a immutable instance

----------------------------------------------------

Widget build(BuildContext context) - provide contextual information about widgets
position in the widget tree

MaterialApp - flutter widget that sets up the apps core structure, include
navigation, theme, home screen

title; 'Hello Flutter' - sets the app title, visible on the device task switcher

theme: ThemeDate( primarySwatch; color.blue), - defines the app visual theme
w/ color blue as the primary color

home" const MyHomePage(), - sets the home screen to an instance of the homepage widget.
 */

