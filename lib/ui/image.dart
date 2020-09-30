import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


con1(w , h) {
  return Container (
    margin: EdgeInsets.all(10),
   child : Image.asset(
      'images/Resume_profile.JPG',
      width: w,
      height: h,
      fit: BoxFit.fill,
    ),
  );
}

Topic(topic_name , size , height) {
  return Container(
    margin: EdgeInsets.only(top: 20 , bottom: 35 , left: 10 , right: 20),
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
          Colors.indigo[900],
          Colors.black,

          Colors.green[900],
          Colors.indigo[900],
       ]       
      ) ,
    ),
     child: Center(
      child: Text(topic_name,
                  style: TextStyle(fontSize: size , color: Colors.white ,fontWeight: FontWeight.bold)),
    ), 
  );
}