import 'package:flutter/material.dart';
import 'package:pink_plate_ui/screens.dart/contact.dart';
import 'package:pink_plate_ui/screens.dart/event.dart';
import 'package:pink_plate_ui/screens.dart/home.dart';
import 'package:pink_plate_ui/screens.dart/search_page.dart';
import 'package:pink_plate_ui/utils/app_colours.dart';
import 'package:pink_plate_ui/utils/app_string.dart';

class BottomTb extends StatefulWidget {
  const BottomTb({Key? key}) : super(key: key);

  @override
  State<BottomTb> createState() => _BottomTbState();
}

class _BottomTbState extends State<BottomTb> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: menu(),
        body: const TabBarView(children: [
          HomePage(),
          Search(),
          Event(),
          Contact(),
        ]),
      ),
    );
  }

  Widget menu() {
    return Container(
      height: 120,
      child: Card(
        

          color: AppColours.bacdkgroundColor,
          elevation: 20,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: TabBar(
            labelColor: AppColours.labelColor,
            unselectedLabelColor: const Color.fromARGB(255, 92, 91, 91),

            // indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.all(5.0),
            indicatorColor: Colors.transparent,
            
            tabs:  [
              Tab(
                  text:Names.bottomTabHome,
                  icon:const Icon(
                    Icons.home_filled,
                  )),
              Tab(
                  text: Names.bottomTabSearch,
                  icon:const Icon(
                    Icons.search,
                  )),
              Tab(
                text:Names.bottomTabEvent,
                icon:const Icon(
                  Icons.event,
                ),
              ),
              Tab(
                text: Names.bottomTabMail,
                icon:const Icon(
                  Icons.mail,
                ),
              ),
            ],
          )),
    );
  }
}
