
import 'package:flutter/material.dart';


class DropDown extends StatelessWidget {
   DropDown({ Key? key }) : super(key: key);
  String selectedValue="USA";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedValue,
      items:dropdownItems, 
      onChanged: null
      
    );
      
    
  }
}

List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: const Text("USA"),value: "USA"),
    DropdownMenuItem(child: Text("Canada"),value: "Canada"),
    DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
    DropdownMenuItem(child: Text("England"),value: "England"),
  ];
  return menuItems;
}