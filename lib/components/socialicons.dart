import 'package:doctors/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.social});
  final String social;
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return OutlinedButton(
      style:OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        side: const BorderSide(width: 1,color: Colors.black),
      ),
        onPressed: (){},
        child: SizedBox(
          width: Config.widthSize * 0.4,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/$social.jpg', // download social icons from internet
                width: 40,
                height: 40,
              ),
              Text(
                social.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          )
        ),
    );
  }
}