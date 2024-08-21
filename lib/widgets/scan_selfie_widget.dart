import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

class ScanSelfieWidget extends StatelessWidget {
  const ScanSelfieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              child: FormBuilderImagePicker(
                maxImages: 1,
                name: 'image_picker', decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Upload Selfie',
                hintStyle: TextStyle(color: Color(0xffE8107A)),
              ),
                backgroundColor: Colors.white,
                iconColor: Color(0xffE8107A),
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
    );
  }
}
