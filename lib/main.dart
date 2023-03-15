import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            primary: Color(0xFF0A0E21), secondary: Colors.purple),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}



/*

 * In this module, we can be making a beautiful BMI Calculator


 *  In the process,we gonna learn all about How to customize flutter widgets so that it would look the way we wanted and be able to implememt custom interfaces
 
 ? What We'll Make 

  A Beautiful App that has custom components and styling,It's gonna help you to calculate bmi(body-mass index)

   ? The actual functionality of the app is incredibly simple,but the important thing is how to not just use the Widgets which were pre-built by Flutter Team

   We are also going to building up our very own custom widgets

 
  ! We are going to be doing our best to try & mimic the look and feel that we see


   * How to use Flutter Themes?
   
    The thing that I want to talk about in this section -- Flutter Themes

    ? It's simply a way for us to be able to find our custom color palettes and custom styling for the look and feel of our app


 If you're creating an app for company or brand,You can keep it consistent across different screens


  ! Cook-Book  is essentially a book which is full of recipes that tell you how to achieve something

  You can see whole bunch of things and how we can achieve it

 ? We gonna able to creat App theme which share styles and color across an entire app
  
  To do this,

   * We need to provide ThemeData to the MaterialApp constructor
   
    We can also specify the theme to our MaterialApp which has whole bunch of properties

  ? This will be shared across all the pages of the app


 Now,we are creating an app with multiple screens

  ! Widgets are style by Flutter-themes -default

  * It's usually a good idea to actually separate out the visual components into separate dart files

*/ 

// ! Design of the App is inspired by Dribble Which I came across by


// Dribble is a fantastic resource to inspired by Designs


/*
  
  *  Very Often in the while when you come across Flutter Apps,you would find structure like this

   - main.dart file usually contains lot of theming,what are the custom fonts and custom colors

 ? It's going to direct towards first screen and for every subsequent screen,there should be a separate dart file .we can see that as we create more screens

 
  ! How to Refactor Flutter Widgets ?

   We gonna look at how to extract and refactor widgets as separate classes

   * The reason why we are doing this  as our app gets more and more complex,it makes sense to take part of it that are repeated in  the Widget tree & remove them so that we can consolidate them into single widget
   
   We can simply use that widget wherever we need them

 * What We'll Make

 Firstly we create individual card we see in the ui of app

 ? First we design different cards which user able to see and group together to calculate bmi-score

 
  So before we actually add any of the content,we first going to create cards that will be background for each of those areas

 * We follow DRY-Don't Repeat Yourself principle


 In order to extract widgets ,there's actually a trick to do those In Android-Studio and refactor into new class

? This class is  actually created by Flutter and use that class anywhere  ( Flutter generates code automatically,we always see a new keyword along with class_name)
In latest version,we don't need a new keyword to create an instance of class


* The Key class is something that we use when we keep track of the state of widgets 

This is especially useful when your widgets are moving around in the widget-tree such as animation,scrolling on the screen

 * But,if you want to specify custom value for one of these properties,then we will need constructor
 
 ? This which keeps changing has to be put under properties

 Whenever we are creating a reusable,it must have background-color so in order to make certain properties required,what we can do in the constructor,we add annotation required


! You can imagine as we add more properties to our widget,we start building our widget which is very similar to default flutter widgets


? When the  class is marked as immutable,but one or more of its instance fields are not final

We deal those issues by using final keyword which makes property immutable(i.e we can set the value of property only once)

 ! Dart final vs Const

 ? Instance Variable=Field=Property

  We can change the property inside the class or when we construct the class,we can set it to have different value

Immutability-Unchangeable

* All of stateless widgets are pretty much unchangeable

Each of the lego-blocks are immutable


? So how dow we make changes in our app which is built on whole bunch of immutable blocks,we just extract the widget that needs to be changed and replaced by new one with changes


 We use final & const commonly across flutter apps

 * When we mark a variable as final or const,we can set its value only once. You usually assign value at the time of creation itself

 * When you are using const,you can't have access during run-time of your app,otherwise we will use final

 We usually define constants globally
 const variables must be initialized with constant value


! Creating Custom Flutter Widgets

 Even though all of the cards looks like same,but their content is little different from one another

 Usually in Flutter-Widgets,they to tend address this by child property,This allows us to reuse the same widget & to add custom content to each of these cards

 First things first,we are going to create  our custom child property

 If we wish,we can add a child & go inside the card component,this child is placed/pass inside our widget tree (child of container)

 * We need to get some icons from font_awesome,just add it as dependency ,make use of it by importing
 
 Child property that we created earlier has to be Column Widget

 To add a gap -SizedBox
 We can position our children in whichever we want using mainAxisAlignment

 * So we gonna create custom icon_content widget 

 ? We can create our own custom constructors so that we can pass values over it
 

! Gesture Detector Widget

 ? This changes the color of the card when we click on it to show they have been interacted with it or selected

 Currently,our cards don't do really anything when we click on it

 None of them actually take onPressed()  they don't have amything of sort like that


We can make icon-cards interactive
 * One way of doing this, we can wrap this widget inside another widget which gives access to onPressed() but it also effects appearance
 
 * In our case all that we actually needs is just an ability to detect touch on cards

  Instead of FlatBlutton,we can use GestureDetector Widget which has whole bunch of methods like Tap,Drag,Press etc..


 ? A widget which detects gestures

? It doesn't try to force any sort of  styling or appearance,animations on to children widgets


 * So this is a pure way of detecting when user interacts  with a widget of ours

  As we update the state of the app,so we need to use stateful widget


  * We shouldn't probably select both cards,if one card gets activate,other card must be in inactive state

   ? How we can do this ?

 ! WE can simplify logic lot shorter by using Dart enums & ternary operators

 


! Flutter Slider Widget


We learned lot of fundamentals in Dart in the process

 We are going to build Slider Widget but we can customize to our liking

  We also want to display value of height when user toggles the slider

 * Remember main-axis alignment is along the length of the row
 
 * Cross-Axis Alignment is along the width of the row
 
 We set the cross-axis or main-axis to one of the options depending on UI

 * You have to specify the textBaseline argument if  you want to specify baseline alignment,so that they know which baseline to align against


 * Flutter has a widget called Slider it will implement a Material Design Slider
 
  We have to got all of our functionality of slider widget





 ! Dart Enums

 Enums stands for Enumeration

 " The action of establishing the number of something"

   We are actually assign some values to meaningful enum consts
  
   ? What if you need something to hold more states,then that's where we start using Enums
    enum EnumName {typeA,typeB,typeC}

     ? We can't create enums inside the class

 Enums making the code lot easier to read

 ! Dart Ternary operator
  
  ? We can reduce the code using this operator but still you supports same logic
  
   Condition ? DoThisIfTrue:DoThisIfFalse
   Equivalent to if..else-if..else ladder

   

  ? : 



 ! Dart functions as first class objects

   *  We can also upgradu our functionality to be able to detect touch

  * Very cool thing about Dart is,passing around functions as any other object

    In Dart,Functions are First Class Objects

    This means they have a type,so we can pass them like any other type
    
     We can also pass function as argument of type Function 

     we just pass function_name if we use it as argument

   The other thing,that we can do with functions is we can even assign function as value of the variable

   ? We can store functions in some variable of type function

  ?  We can have top-level functions that are not associated with any class or object

  * When we are passing function to the constructor as property argument,we don't add ()
 
  Functions are flexible like any other Object

   * We can also extend the functionality to be able to touch (onPress)

   It's always a good practice to refactor your code as you go along


    



 ! Composition vs Inheritance

  So far,we learn that we can customize widget by doing number of things

  * We can either set the properties of the each widget

 Because our widgets are beautiful,the old one gets destroyed and new gets replaced with updated properties

 We can also change style or any of the other properties which are pre-defined by flutter

  If we want to create Custom Widget from scratch,

  In a lot of programming languages, then generally the way we go about this is through inheritance

   We would inherit the Component and then we would override some of the properties or methods of those components This is generally how we do things

 But in the  Flutter,the way it's built  favours Composition over Inheritance

  ? How do we actually go about composing widgets?

    It's actually composed of smaller widgets such as LimitedBox,ConstrainedBox with align,padding & DecoratedBox

 By combining these simple basic widgets we can build more complex & interesting widgets





! Routes & Navigation

These are the ways first to be able to have Multi-Screens or Multi-page apps

* In order to do that,we need to know about Routes & Navigations

 In Flutter,when we talk about routes it's actually synonym to screens & pages

? Whenever we talk about routes,it's just a way of getting into screen or page in your app

 Now we have different routes in real-life too

  * If I want to go to a particular screen,I need to trigger that partcular route

 This is how we organize multi-screens apps in Flutter

For every single screen that you have in your app,yiu should have a tour-guide or Flutter navigator that takes you to desired screen

Flutter does a really cool thing of creating these cookbooks

 ? How we can create Navigation  towards new screen and How to go back?

  * We use Navigator.push() and add a route to stack of routes

  Screens are organized in stack fashion ,they each go on top of each other

  We have to pass 2 things, context & also build a MaterialPageRoute and tell where we wanted to go

  Now,the context refers to build Context

  By passing context,it's easy for flutter to figure-out where we are in the widget-tree and where we need to go
 
   We can also pop if we want to get back ,all it need to do is to destory the top-screen

   ! Navigator with named-routes

  * Material-app also have property named routes

  * This allows us to define a Map which is similar to dictionary

  ? It's basically a collection type just as list of  collection of items

 Difference b/w Map & List :
   * Map has key/val pairs
   * We can define our routes using Map-constructor
   
   ? Key-Name of the route(String)
   ? Value- It's going to be a function which takes context as input and returns widget(Arrow-function)

   We could also use property called initialRoute(starting-route)

   Be careful while defining Home & initialRoute(Because they conflict with each other) only we can define one of them

   Instead of push() ,we can use pushNamed() which takes context  & route-name as arguments



! Customizing Widgets with Themes

  ? How  can we make our design  look exactly to you app ui

 How can we do beyond changing our properties

 But,there's a one way of customizing flutter widgets more in line with the design exactly that you want

* To determine,how it should be displayed,a slider uses SlideThemeData available from SlideTheme widget or ThemeData

If you want more fine-grained control of the look it's achieved using SliderThemeData

 
We can have specific themes relative to widgets

 If you want to tweak a couple of things from default widget

 There's something which is really helpful across all of the widgets
  
  * .of()- return the data from closest slidertheme in a given context
  If we pass context to it, we'll get a copy what it looks by default using 

  Inside copyWith(),we only specify the properties that we want to change

 All of the functionality is done inside the actual slider component

 Any design that you can dream of can be made possible




 ! Dart Maps

  How do they look and work in Dart

   It's more like how something can map to something else

   You can think of maps almost like PhoneBook

   Phonebook is sort of basic map,usually you would have names of your friends as keys and their phone-numbers as value associated with the keys

   * Maps are unordered
   Key->Val

   Map<KeyType,ValueType>mapName{
    key:Value
   }

   mapName[key] - This is how we access the keys in map


 ! Designing Result Pages

 * Most of our input-page is now complete & all of the components now work on this page as expected
 
  Firstly, from top to bottom it's vertical column widget

 ? By default,all the expanded widgets gets a flex of 1,if it need to take more space,we specify flex of 5

 Now we are done with the design for both input_page & result_page
 


  ! Adding BMI functionality
 As we mentioned,design is hardest part in this app


 To calculate  bmi=mass/(height)^2

 toStringAsFixed()-It'will return integer to single decimal point & converted into string

  We addded few methods,where one gives the result & other gives the string interpretation of bmi

  



*/