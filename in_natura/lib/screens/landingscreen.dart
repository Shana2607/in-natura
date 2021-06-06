import 'package:flutter/material.dart';
import 'package:in_natura/screens/homepage.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text('Insect Detection', style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            //TODO: Replace with Image of Insect
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: const Center(child: const Text('The image of insect would come here')),
          ),
          const Center(
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 35.0
              ),
            ),
          ),
          const Text(' New User?'),
          Center(child: Container(
            width: MediaQuery.of(context).size.width,
            child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                ),
                onPressed: (){
                  //TODO: Implement SIGN UP Functionality
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
                }, child: const Text('Sign Up')),
          )),
          const Text(' Existing User'),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                  onPressed: (){
                    //TODO: Implement SIGN IN Functionality
                  }, child: const Text('Log In')),
            ),
          ),
          const Spacer(),
          Center(child: Container(
            width: MediaQuery.of(context).size.width,
            child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                ),
                onPressed: (){
                  //TODO: Implement Question Functionality
                }, child: const Text('Question for us?')),
          )),
          Spacer()
        ],
      ),
    );
  }
}
