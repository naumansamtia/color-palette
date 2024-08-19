import 'package:color_palette/pages/password_reset.dart';
import 'package:color_palette/signup_page.dart';
import 'package:color_palette/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
        title: const Text('Login'),

      ),
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            // height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/signin-bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Positioned(
          //   top: -50,
          //   right: 5,
          //   child: Transform.rotate(angle: 0.2,
          //       child: Image.asset('assets/vertical-wings.png', height: 150, width: 55,)),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.9,
                  child:
                      Image.asset('assets/logo-icon.png', fit: BoxFit.fitHeight),
                ),
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Color(0xffE8107A),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextFieldForm(
                  name: 'email',
                  labelText: 'Email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.email,
                  obscureText: false,
                  validatorText: 'Please enter your email!',
                ),
                const SizedBox(height: 20),
                CustomTextFieldForm(
                  name: 'password',
                  labelText: 'Password',
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  icon: Icons.lock,
                  obscureText: true,
                  validatorText: 'Please enter your password!',
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: GestureDetector(
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Color(0xffE8107A),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordResetPage()));
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  textColor: Colors.white,
                  color: const Color(0xffE8107A),
                  text: 'Log in',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'Or sign in with',
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
                          child: const Icon(FontAwesomeIcons.google, color: Color(0xffE8107A)),
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
                        child: const Icon(FontAwesomeIcons.facebook, color: Color(0xffE8107A)),
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
                        child: const Icon(FontAwesomeIcons.fingerprint, color: Color(0xffE8107A)),
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
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Color(0xffE8107A),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      child: const Text(
                        ' Sign up',
                        style: TextStyle(
                          color: Color(0xffE8107A),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
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

      // Stack(
      //   children: [
      //     Container(
      //       alignment: Alignment.topRight,
      //       child: Transform.rotate(angle: 0,
      //           child: Image.asset('assets/vertical-wings.png', height: 120, width: 55,)),
      //     ),
      //     Container(
      //       alignment: Alignment.topCenter,
      //       child: Image.asset('assets/logo-icon.png', height: 150,width: 150,),
      //       // decoration: const BoxDecoration(
      //       //   image: DecorationImage(
      //       //     image: AssetImage('assets/full-logo.png'),
      //       //     fit: BoxFit.cover,
      //       //   ),
      //       // ),
      //     ),
      //     Center(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Container(
      //             padding: const EdgeInsets.all(20),
      //             decoration: BoxDecoration(
      //               color: Colors.white.withOpacity(0.8),
      //               borderRadius: BorderRadius.circular(10),
      //             ),
      //             child: Column(
      //               children: [
      //                 TextField(
      //                   decoration: InputDecoration(
      //                     hintText: 'Email',
      //                     border: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                     ),
      //                   ),
      //                 ),
      //                 const SizedBox(height: 20),
      //                 TextField(
      //                   decoration: InputDecoration(
      //                     hintText: 'Password',
      //                     border: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(5),
      //                     ),
      //                   ),
      //                 ),
      //                 const SizedBox(height: 20),
      //                 ElevatedButton(
      //                   onPressed: () {},
      //                   child: const Text('Login'),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // )
    );
  }
}
