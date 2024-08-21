import 'package:color_palette/widgets/result_list_page_widget.dart';
import 'package:color_palette/widgets/scan_selfie_widget.dart';
import 'package:flutter/material.dart';

class UploadSelfiePage extends StatefulWidget {
  const UploadSelfiePage({super.key});

  @override
  State<UploadSelfiePage> createState() => _UploadSelfiePageState();
}

class _UploadSelfiePageState extends State<UploadSelfiePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              // color: Colors.white,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.verified_outlined,
              // color: Colors.white,
            ),
            label: 'Results',
          ),
        ],
      ),
      body: <Widget>[
        /// uploading selfie page
        ScanSelfieWidget(),
        /// Result page
        ResultListPageWidget(),
      ][currentPageIndex],
    );
  }
}