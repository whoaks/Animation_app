import 'package:flutter/material.dart';

sidebar_text(name) {
  
  return Text(name ,
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),);
}


MyDraw() {
   return Drawer(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
            title: sidebar_text('Run Linux Command'),
            onTap: () {
              print('hey aksh');
            },
          )
        ],
      ),
    );
}