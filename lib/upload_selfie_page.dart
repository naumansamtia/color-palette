import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UploadSelfiePage extends StatefulWidget {
  const UploadSelfiePage({super.key});

  @override
  State<UploadSelfiePage> createState() => _UploadSelfiePageState();
}

class _UploadSelfiePageState extends State<UploadSelfiePage> {
  int currentPageIndex = 0;

  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  // ];
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('UploadSelfiePage'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffE8107A),
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black87,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.photo_camera_front_outlined,
              color: Colors.white,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.verified_outlined,
              color: Colors.white,
            ),
            label: 'Results',
          ),
        ],
      ),

      //bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0xffE8107A),
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.document_scanner_outlined),
      //       label: 'Scan',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),

      body: <Widget>[
        /// uploading selfie page
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Upload Selfie',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffE8107A))),
                      Text('Get your personalized results',
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, '/settings');
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.settings,
                          size: 30, color: Color(0xffE8107A)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffE8107A).withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffE8107A), width: 1),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, '/camera');
                    },
                    child: const Icon(Icons.add_a_photo,
                        size: 50, color: Color(0xffE8107A)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 5),
              const Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  'Upload your selfie to get your personalized results',
                  style: TextStyle(fontSize: 23, color: Color(0xffE8107A)),
                ),
              ),
            ],
          ),
        ),

        /// Result page
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 50),
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  height: 150,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffE8107A), width: 1),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, '/camera');
                    },
                    child: const Icon(Icons.add_a_photo,
                        size: 50, color: Color(0xffE8107A)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ][currentPageIndex],
    );
  }
}
