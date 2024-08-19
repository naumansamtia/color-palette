import 'package:color_palette/signup_page.dart';
import 'package:color_palette/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class LoginSignupSelection extends StatelessWidget {
  const LoginSignupSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Positioned(
            top: 20,
            left: 0,
            child: Transform.rotate(angle: 0.5,
            child: Image.asset('assets/vertical-wings.png', height: 150, width: 55,)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.3,
                child: Image.asset('assets/full-logo.png',fit: BoxFit.fitHeight),
              ),
              const Text(
                'Discover your unique color',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 7),
              CustomButton(
                text: 'Login',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Sign up',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                },
              )
              // GestureDetector(
              //   onTap: (){},
              //   child: Container(
              //     height: 45,
              //     width: MediaQuery.of(context).size.width / 1.6,
              //     decoration: BoxDecoration(
              //         color: Colors.white,
              //         border: Border.all(color: const Color(0xffE8107A), width: 1.5),
              //         // gradient: LinearGradient(
              //         //   colors: [Color(0xFFf45d27), Color(0xFFf5851f)],
              //         // ),
              //         borderRadius: const BorderRadius.all(Radius.circular(50))),
              //     child: const Center(
              //       child: Text(
              //         'Sign up',
              //         style: TextStyle(
              //             color: Color(0xffE8107A), fontWeight: FontWeight.bold, fontSize: 20),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/bottom-wings.png', height: 60, width: 60,),
          ),
        ],
      ),
    );
  }
}
