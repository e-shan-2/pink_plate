import 'package:flutter/material.dart';

import 'package:pink_plate_ui/screens.dart/bottom_tab.dart';
import 'package:pink_plate_ui/screens.dart/home.dart';
import 'package:provider/provider.dart';

import 'provider/provider.dart';


void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomTb(),
      ),
    );
  }
}
