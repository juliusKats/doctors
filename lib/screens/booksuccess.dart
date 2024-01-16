import 'package:doctors/components/button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppointmentBooked extends StatefulWidget {
  const AppointmentBooked({ Key? key }) : super(key: key);

  @override
  _AppointmentBookedState createState() => _AppointmentBookedState();
}

class _AppointmentBookedState extends State<AppointmentBooked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex:3,
            child: Lottie.asset('assets/Success.json'), // downlod favourite lottie
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child:  const Text( 
                'Successfully Booked',
                style:TextStyle( 
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
              ),
              Spacer(),
              // back to home page
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Button(
                  width: double.infinity, 
                title: 'Back to Home Page', 
                onPressed: ()=>Navigator.of(context).pushNamed('main'), 
                disable: false),
              )
          ],
        ),
      ),
      
    );
  }
}