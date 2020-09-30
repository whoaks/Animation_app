import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

var image_url = 'https://raw.githubusercontent.com/whoaks/My_Portfolio/master/Resume_profile.JPG';

con1(w , h) {
  return Container (
    margin: EdgeInsets.all(10),
   child : Image.asset(
    //  image_url ,
      'images/Resume_profile.JPG',
      width: w,
      height: h,
      fit: BoxFit.fill,
    ),
  );
}

con2() {
  return Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    SizedBox(width: 20.0, height: 40.0),
    Text(
      "Be",
      style: TextStyle(fontSize: 20.0),
    ),
    SizedBox(width: 20.0, height: 40.0),
    RotateAnimatedTextKit(
      onTap: () {
        print("Tap Event");
      },
      text: ["AWESOME", "OPTIMISTIC", "DIFFERENT"],
      textStyle: TextStyle(fontSize: 20.0, fontFamily: "Horizon"),
      textAlign: TextAlign.start,
      alignment: AlignmentDirectional.topStart // or Alignment.topLeft
    ),
  ],
);
}

Topic(topic_name , size , height) {
  return Container(
    margin: EdgeInsets.only(top: 20 , bottom: 15 , left: 10 , right: 20),
    height: height,
   // width: 300,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(

        end: Alignment.topRight,
        stops: [
          0.1,
          0.4,
          0.6,
          0.9
        ] ,
        begin: Alignment.bottomLeft,
        colors: [
        //Colors.deepOrange,
          //Colors.red[800],
          Colors.indigo[900],
          Colors.black,

        //Colors.lime[600],
      //Color(0xFF42A5F5),
          Colors.green[900],
          Colors.indigo[900],
      //Colors.amber
        ]       
      ) ,
    ),
     child: Center(
      child: Text(topic_name,
                  style: TextStyle(fontSize: size , color: Colors.white ,fontWeight: FontWeight.bold)),
    ), 
  );
}