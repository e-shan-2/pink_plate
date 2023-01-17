import 'package:flutter/material.dart';
import 'package:pink_plate_ui/utils/app_string.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        Names.projectUnderDevelopment,
        style:const TextStyle(fontSize: 60),
      )),
    );
  }
}
