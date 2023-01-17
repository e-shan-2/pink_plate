import 'package:flutter/material.dart';
import 'package:pink_plate_ui/utils/app_string.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        Names.projectUnderDevelopment,
        style: const TextStyle(fontSize: 60),
      )),
    );
  }
}
