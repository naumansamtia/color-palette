import 'package:flutter/material.dart';

class ResultListPageWidget extends StatefulWidget {
  const ResultListPageWidget({super.key});

  @override
  State<ResultListPageWidget> createState() => _ResultListPageWidgetState();
}

class _ResultListPageWidgetState extends State<ResultListPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 50),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your Results',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffE8107A))),
                    Text('Your color analysis results',
                        style: TextStyle(fontSize: 16, color: Colors.grey)),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, '/settings');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Icon(Icons.settings,
                        size: 30, color: Color(0xffE8107A)),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              // reverse: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return resultList();
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget resultList(){
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
    child: GestureDetector(
      onTap: () {
        print('Result Container Tapped');
        // Navigator.pushNamed(context, '/camera');
      },
      child: Container(
          padding: const EdgeInsets.only(left: 20),
          alignment: Alignment.bottomCenter,
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xffE8107A).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset:
                const Offset(0, 2), // changes position of shadow
              ),
            ],
            image: const DecorationImage(image: AssetImage('assets/dummy-kid-img.jpg'), fit: BoxFit.cover, opacity: 0.8),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xffE8107A), width: 1),
          ),
          child: const Row(
            children: [
              Icon(Icons.remove_red_eye_outlined, size: 50, color: Colors.white),
              Text('Tap to reveal', style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          )
      ),
    ),
  );
}
