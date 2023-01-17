import 'package:flutter/material.dart';
import 'package:pink_plate_ui/utils/app_string.dart';

class Event extends StatefulWidget {
  const Event({ Key? key }) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Text(Names.projectUnderDevelopment,style: TextStyle(fontSize: 60),)),
      
    );
  }
}