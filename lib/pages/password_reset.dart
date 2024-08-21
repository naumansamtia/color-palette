import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class PasswordResetPage extends StatelessWidget {
  PasswordResetPage({super.key});

  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xffE8107A),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: -15,
        titleTextStyle: const TextStyle(
          color: Color(0xffE8107A),
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        title: const Text('Password Reset'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container(
            //   // height: MediaQuery.of(context).size.height,
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage("assets/signin-bg.jpg"),
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),

            // Positioned(
            //   top: -50,
            //   right: 5,
            //   child: Transform.rotate(angle: 0.2,
            //       child: Image.asset('assets/vertical-wings.png', height: 150, width: 55,)),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomTextFieldForm(
                    name: 'oldPassword',
                    labelText: 'Old Password',
                    controller: oldPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.lock,
                    obscureText: true,
                    validatorText: 'Please enter your old password!',
                  ),
                  const SizedBox(height: 10),
                  CustomTextFieldForm(
                    name: 'newPassword',
                    labelText: 'New Password',
                    controller: newPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.lock,
                    obscureText: true,
                    validatorText: 'Please enter your new password!',
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    width: MediaQuery.of(context).size.width / 1.3,
                    textColor: Colors.white,
                    color: const Color(0xffE8107A),
                    text: 'Create New Password',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: Container(
            //     // decoration: const BoxDecoration(
            //     //   image: DecorationImage(
            //     //     image: AssetImage('assets/bottom-wings.png'),
            //     //     fit: BoxFit.cover,
            //     //   ),
            //     // ),
            //       child: Image.asset('assets/bottom-wings.png', height: 60, width: 60,),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
