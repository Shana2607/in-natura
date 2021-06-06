import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:in_natura/screens/saveimage.dart';

class NoviceUser extends StatefulWidget {
  const NoviceUser({Key? key}) : super(key: key);

  @override
  State<NoviceUser> createState() => _NoviceUserState();
}

class _NoviceUserState extends State<NoviceUser> {
  late File pickedImage;
  bool isImageloading = false;

  selectFromImagePicker() async {

    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    if (image == null) return;
    pickedImage = File(image.path);

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SaveImage(pickedImage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novice User'),
      ),
      body: isImageloading? Center(child: CircularProgressIndicator()): Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: const Text(
              'Take a picture'
            ),
          ),
          GestureDetector(
            onTap: selectFromImagePicker,
              child: Icon(Icons.camera_alt_outlined, size: 120.0,))
        ],
      ),
    );
  }
}
