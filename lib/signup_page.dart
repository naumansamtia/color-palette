import 'package:color_palette/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'upload_selfie_page.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final dobController = TextEditingController();

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
        title: const Text('Sign up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
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
                    name: 'name',
                    labelText: 'Full Name',
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    icon: Icons.person,
                    obscureText: false,
                    validatorText: 'Please enter your name!',
                  ),
                  const SizedBox(height: 10),
                  CustomTextFieldForm(
                    name: 'phone',
                    labelText: 'Phone Number',
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    icon: Icons.phone,
                    obscureText: false,
                    validatorText: 'Please enter your phone number!',
                  ),
                  const SizedBox(height: 10),
                  CustomTextFieldForm(
                    name: 'email',
                    labelText: 'Email',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.email,
                    obscureText: false,
                    validatorText: 'Please enter your email!',
                  ),
                  const SizedBox(height: 10),
                  CustomTextFieldForm(
                    name: 'password',
                    labelText: 'Password',
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.lock,
                    obscureText: true,
                    validatorText: 'Please enter your password!',
                  ),
                  const SizedBox(height: 10),
                  CustomTextFieldForm(
                    name: 'confirmPassword',
                    labelText: 'Confirm Password',
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.lock,
                    obscureText: true,
                    validatorText: 'Please confirm your password!',
                  ),
                  const SizedBox(height: 10),
                  Container(
                    // height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffffffff),
                      border: Border.all(color: Color(0xffE8107A), width: 1.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: FormBuilderDateTimePicker(
                        name: 'dob',
                        controller: dobController,
                        inputType: InputType.date,
                        keyboardType: TextInputType.datetime,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Please enter your date of birth!'),
                        ]),
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.calendar_today,
                            color: Color(0xffE8107A),
                            size: 20,
                          ),
                          border: InputBorder.none,
                          labelText: 'Date of Birth',
                          labelStyle: TextStyle(
                            color: Color(0xffE8107A),
                            fontSize: 13,
                          ),
                          contentPadding: EdgeInsets.only(top: 5, bottom: 0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //       value: false,
                  //       onChanged: (bool? value) {},
                  //     ),
                  //     const Text('I agree to the Terms of Service and Privacy Policy', style: TextStyle(color: Color(0xffE8107A), fontSize: 12),),
                  //   ],
                  // ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'By signing up, you agree to our Terms of Service and Privacy Policy',
                      style: TextStyle(color: Color(0xffE8107A), fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    textColor: Colors.white,
                    color: const Color(0xffE8107A),
                    text: 'Sign up',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UploadSelfiePage()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Or sign up with',
                    style: TextStyle(
                      color: Color(0xffE8107A),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color(0xffF6CFE3),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Icon(FontAwesomeIcons.google,
                              color: Color(0xffE8107A)),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color(0xffF6CFE3),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Icon(FontAwesomeIcons.facebook,
                              color: Color(0xffE8107A)),
                        ),
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color(0xffF6CFE3),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Icon(FontAwesomeIcons.fingerprint,
                              color: Color(0xffE8107A)),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Color(0xffE8107A),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        child: const Text(
                          ' Log in',
                          style: TextStyle(
                            color: Color(0xffE8107A),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                      ),
                    ],
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
