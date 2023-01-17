import 'package:flutter/material.dart';
import 'package:pink_plate_ui/utils/app_colours.dart';
import 'package:pink_plate_ui/utils/tab_button.dart';
import 'package:pink_plate_ui/utils/app_string.dart';

class AppMenu extends StatelessWidget {
  ImageProvider<Object> backgroundImage;
  AppMenu({required this.backgroundImage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          
           gradient: mygrad,
           image: DecorationImage(image: backgroundImage, fit: BoxFit.fill),
         
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              Names.mocktailname,
              style: TextStyle(
                 color: AppColours.bacdkgroundColor,
                  fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top:4.0),
              child: Text(
                Names.continentalAndItalian,
                style:  TextStyle(
                   color: AppColours.bacdkgroundColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),




            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Row(
             
                children:  [
                Icon(Icons.watch_later_outlined,color: AppColours.bacdkgroundColor,),
                Text(Names.timingString,
                    style:  TextStyle(
                        color: AppColours.bacdkgroundColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                        Icon(Icons.circle,color: AppColours.bacdkgroundColor,size: 10.0,),
                Icon(Icons.location_on_outlined,color: AppColours.bacdkgroundColor,),
                Text(
                  Names.distanceString,
                  style: TextStyle(
                      color: AppColours.bacdkgroundColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
