import 'package:flutter/material.dart';
import 'package:doctors/utils/config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class  HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 List<Map<String, dynamic>> medCat=[
   {
     "icon":FontAwesomeIcons.userDoctor,
     "category":"General"
   },
   {
     "icon":FontAwesomeIcons.heartPulse,
     "category":"Cardiology"
   },
   {
     "icon":FontAwesomeIcons.lungs,
     "category":"Respirations"
   },
   {
     "icon":FontAwesomeIcons.hands,
     "category":"Dermatology"
   },
   {
     "icon":FontAwesomeIcons.personPregnant,
     "category":"Gynecology"
   },
   {
     "icon":FontAwesomeIcons.teeth,
     "category":"Dental"
   },
   {
     "icon":FontAwesomeIcons.baby,
     "category":"Pedestrian"
   }
 ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold (
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Hello: Hny Getrude', // hard corded
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                      AssetImage('assets/profile1.jpg'),
                    ),
                  )
                ],
              ),
              Config.spaceSmall,
              // Config.spaceMedium,
              // category listing
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold,
                ),
              ),
              Config.spaceSmall,
              // SizedBox(
              //   height: 20,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: List<Widget>.generate(medCat.length, (index) {
              //       margin: const Edge
              //     }),
              //   ) ,
              // )
              // building category listing

            ],
          ),
        )
      )
    );
  }
}