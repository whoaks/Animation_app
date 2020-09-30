import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Title() {
  return Text ('My Animation APP' ,
  style: TextStyle(
    fontSize: 25.0,
    color: Colors.cyanAccent[100],
  ),
  );
}

Home_AppBar() {
  return AppBar(
    title: Title(),
    backgroundColor: Colors.red[400],
  );
}