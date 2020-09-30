import 'package:animation_app/ui/drawer.dart';
import 'package:flutter/material.dart';
import 'method.dart';
import 'image.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyAnimation extends StatefulWidget {
  @override
  _MyAnimationState createState() => _MyAnimationState();
}
var myanicon;
var animation;
  
class _MyAnimationState extends State<MyAnimation> with SingleTickerProviderStateMixin{
  
  @override
  void initState() {
    super.initState();
    myanicon=AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    print(myanicon);

    animation=CurvedAnimation(parent: myanicon ,curve: Curves.bounceInOut)
    ..addListener(() {
      setState(() {
        print(animation.value);
      });
    });

    print(animation);

    myanicon.forward();
    print(myanicon);

  }
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: Home_AppBar(),
        backgroundColor: Colors.amber,
        drawer: MyDraw(),
        body: Center(          
          child: Column(
            children: <Widget>[
              con1(150* animation.value + 50, 150*animation.value + 50 ) ,
              GestureDetector(
                onTap: () {
                  myanicon.forward(from: 0.2);
                  print('Hey AKash');
                },
                child: Column(
                  children: <Widget>[
                  Topic('Created By - \n \t   \t    \t   Akash Pandey' , 25* animation.value + 5 , 100*animation.value + 50) ,       
                  ],
                ),              
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}