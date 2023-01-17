import 'package:flutter/material.dart';
import 'package:pink_plate_ui/utils/app_images.dart';

import 'package:pink_plate_ui/utils/tab_button.dart';

import 'package:pink_plate_ui/utils/app_colours.dart';

import 'package:pink_plate_ui/utils/app_menu_container.dart';
import 'package:pink_plate_ui/utils/app_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedValue = Names.dropDownMenuItemNewYorkStreetAddress;
  // Neewsfeed item
  List newsfeed = [
    AppMenu(
      backgroundImage: AssetImage(AppImages.moctails),
    ),
    AppMenu(backgroundImage: AssetImage(AppImages.chicken)),
    AppMenu(backgroundImage: AssetImage(AppImages.frenchCusini)),
    AppMenu(
      backgroundImage: AssetImage(AppImages.frenchFood),
    ),
  ];

  // Icons for App DropDownButton
  List sidefeed = [
    TabButtonClass(
        icon: Icons.star_outline,
        icon2: Icons.star_outline,),
    TabButtonClass(
      icon: 
        Icons.calendar_month,
        icon2:Icons.calendar_month ,

      ),
    
    TabButtonClass(
      icon: 
        Icons.dining_outlined,
        icon2: Icons.dining_outlined,
        
      ),
  
  ];

  // List of item for drop down menu address
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
      child: Text(
        Names.dropDownMenuItemNewYorkStreetAddress,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      value: Names.dropDownMenuItemNewYorkStreetAddress,
    ),
    DropdownMenuItem(
        child: Text(
          Names.dropDownMenuItemCalifornia,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        value: Names.dropDownMenuItemCalifornia),
    DropdownMenuItem(
      child: Text(
        Names.dropDownMenuItemSanfrancisco,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      value: Names.dropDownMenuItemSanfrancisco,
    ),
    DropdownMenuItem(
        child: Text(
          Names.dropDownMenuItemTexas,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        value: Names.dropDownMenuItemTexas),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Its is for the pink palte and Notification display
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text(
                      Names.pinkPlateName,
                      style: TextStyle(
                          color: AppColours.pinkPlateColor, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 7,
                          right: 4,
                          child: Icon(
                            Icons.notifications,
                            color: AppColours.primaryColorLight,
                            size: 19,
                          ),
                        ),
                       const Icon(
                          Icons.notifications_none,
                          color: Colors.black,
                          size: 31,
                        ),
                        Positioned(
                          right: 3,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: AppColours.primaryColor,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            // it is for the the streetAddress DropDown menu
            Container(
              margin: const EdgeInsets.only(right: 120),
              padding: const EdgeInsets.only(left: 8),
              child: DropdownButton(
                value: selectedValue,
                items: menuItems,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
            ),

            // It is for the daily Special 
            SizedBox(
              height: 40,
              width: 400,
              child: ListView.builder(
                  itemCount: sidefeed.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return sidefeed[i];
                  }),
            ),

            // Its is for the news feed
            Expanded(
              child: ListView.builder(
                itemCount: newsfeed.length,
                itemBuilder: (context, i) {
                  return newsfeed[i];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
