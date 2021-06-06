import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class SaveImage extends StatelessWidget {
  File pickedImage;
  // ignore: use_key_in_widget_constructors
  SaveImage(this.pickedImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save Image'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(File(pickedImage.path)),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.black)),
          ),
          const Spacer(),
          TextButton(onPressed: (){
            //TODO: Perform Operation and move to classification
          }, child: Text('Save')),
          TextButton(onPressed: (){
            //TODO: Return to Image Selection screen to repick image
          }, child: Text('New Image')),
          const Spacer(),
        ],
      ),
    );
  }
}
