import 'package:chat/constants.dart';
import 'package:chat/screens/signinOrSignUp/signin_or_signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2,),
            Image.asset("assets/images/welcome_image.png"),
            Spacer(
              flex: 3,
            ),
            Text("Welcome to chatting app",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold)),
                    Spacer(),
            Text(
              "communicate with your friends",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,
            ),
            Spacer(flex: 3,),
            FittedBox(
              child: TextButton(
                onPressed: () => Navigator.push( 
                  context,MaterialPageRoute(builder: (context) =>
                  SigninOrSignupScreen())
              ),
                child: Row(
                  children: [
                    Text(
                      "skip",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .color!
                              .withOpacity(0.8)),
                    ),
                    SizedBox(width: kDefaultPadding/4 ,),
                     Icon(Icons.arrow_forward_ios),
                  ],
                ),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
