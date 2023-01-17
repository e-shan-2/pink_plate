import 'package:flutter/material.dart';
import 'package:pink_plate_ui/provider/provider.dart';

import 'package:pink_plate_ui/utils/app_colours.dart';
import 'package:pink_plate_ui/utils/app_string.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class TabButtonClass extends StatelessWidget {
  IconData? icon;
  IconData? icon2;

  TabButtonClass({required this.icon, required this.icon2, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selectedValue = Names.dailySpecial;

    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColours.bacdkgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Stack(
          children: [
            Positioned(
              top: 6,
              right: 4,
              child: Icon(
                icon,
                color: AppColours.primaryColor,
                size: 10,
              ),
            ),

            Icon(
              icon,
              color: AppColours. blackColour,
              size: 20,
            ),
          //  const Positioned(
          //     right: 3,
          //     child: CircleAvatar(
          //       radius: 6,
          //       backgroundColor: AppColours.primaryColor,
          //     ),
          //   )
          ],
        ),

      
        Consumer<AppProvider>(builder: ((context, _provider, child) {
          return DropdownButton(
              value: selectedValue,
              items: dropdownItems,
              onChanged: (String? value) {
                _provider.selectedValue = value!;
              });
        }))
      ]),
    );
  }
}

Gradient mygrad = const LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Colors.black, Colors.white],
    stops: [0.0, 1]);

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
      child: Text(Names.dailySpecial),
      value: Names.dailySpecial,
    ),
    DropdownMenuItem(
        child: Text(
          Names.weeklySpecial,
        ),
        value: Names.weeklySpecial),
  ];
  return menuItems;
}
