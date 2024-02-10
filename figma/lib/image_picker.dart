import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
class images extends StatefulWidget {
  const images({super.key});

  @override
  State<images> createState() => _imagesState();
}

class _imagesState extends State<images> {
  String? _filePath;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _filePath != null
                    ? Container(
                    height: 1280,width: 720,
                    child: Image.file(File(_filePath!)))
                    : Text(''),
                SizedBox(height: 20),
                ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(
                      backgroundColor: Colors.black
                  ),
                  onPressed: () {


                    _pickImage();
                  },
                  child: Text('Select Thumnail'),
                ),
              ],
            ),
          ),
        ),
      );
  }

  _pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      setState(() {
        _filePath = result.files.single.path;
      });
    }// is buttion ka colour kasy chang karna ha ok
  }
}
