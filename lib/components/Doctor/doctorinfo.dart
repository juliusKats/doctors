import 'package:flutter/material.dart';
import 'package:doctors/components/Doctor/InfoCard.dart';
import 'package:doctors/utils/config.dart';

class DoctorInfo extends StatelessWidget {
const DoctorInfo({ super.key });

  @override
  Widget build(BuildContext context){
       Config().init(context);
    return  const Row(
        children:  <Widget>[
         InfoCard(
          label:  'Patients', 
          value: '109'
          ),
          SizedBox(width: 10,),
           InfoCard(
          label:  'Experiences', 
          value: '10 Years'
          ),
          SizedBox(width: 10,),
           InfoCard(
          label:  'Rating', 
          value: '4.6'
          ),
        ],
      );
  }
}




