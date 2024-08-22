import 'package:color_palette/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ResultDetailsPage extends StatelessWidget {
  const ResultDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xffE8107A),
                  // image: DecorationImage(
                  //   image: AssetImage('assets/dummy-kid-img.jpg'),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                // child: Image.asset('assets/dummy-kid-img.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButtonWithIcon(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                color: const Color(0xffE8107A),
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye_outlined),
                iconColor: Colors.white,
                iconSize: 30,
                text: 'Reveal Result',
                textColor: Colors.white,
                fontSize: 23,
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        // Container(
        //   child: CustomButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.remove_red_eye_outlined),
        //     text: 'Reveal Result',
        //   ),
        // ),
        Positioned(
            top: 55,
            right: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.cancel_outlined),
              color: Colors.white,
              iconSize: 45,
            )),
      ],
    ));
  }
}
