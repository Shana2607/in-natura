import 'package:flutter/material.dart';
import 'package:in_natura/screens/expertuser.dart';
import 'package:in_natura/screens/noviceuser.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Type'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            //TODO: Replace with SWIPER Images
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: const Center(child: const Text('The image of insect would come here')),
          ),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NoviceUser()));
          }, child: Text('Novice? Click here')),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ExpertUser()));
          }, child: Text('Expert? Click here')),
          TextButton(onPressed: (){}, child: Text('No idea? Check our validation'))
        ],
      ),
    );
  }
}
