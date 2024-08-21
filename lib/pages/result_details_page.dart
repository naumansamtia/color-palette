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
            child: Container(
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xffE8107A),
                // image: DecorationImage(
                //   image: AssetImage('assets/dummy-kid-img.jpg'),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ),
          // Positioned(
          //     top: 30,
          //
          //
          //
          // ),
          Positioned(
              top: 55,
              right: 10,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.cancel_outlined),
                color: Colors.white,
                iconSize: 45,
              )
          ),
        ],
      )
    );
  }
}
