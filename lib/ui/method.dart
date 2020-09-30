import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

launchUrl() async{
  const url = 'https://www.linkedin.com/in/akash-pandey-0687281a3/';
  if (await canLaunch(url)) {
    await launch(url);
  }
  else {
    throw 'Could not launch $url';
  }
}

Linkedin_Icon() {
  return IconButton(
    icon: Icon(FontAwesomeIcons.linkedin),
    onPressed: launchUrl(),
    );
}

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