import 'package:flutter/material.dart';

class ExpertUser extends StatelessWidget {
  const ExpertUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Expert User'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Container(
           width: MediaQuery.of(context).size.width,
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           child: TextButton(
               style: TextButton.styleFrom(
                 primary: Colors.black,
                 backgroundColor: Colors.white,
               ),
               onPressed: (){}, child: Text('Take Picture')),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           child: TextButton(
               style: TextButton.styleFrom(
                 primary: Colors.black,
                 backgroundColor: Colors.white,
               ),
               onPressed: (){}, child: Text('View Image')),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           child: TextButton(
               style: TextButton.styleFrom(
                 primary: Colors.black,
                 backgroundColor: Colors.white,
               ),
               onPressed: (){}, child: Text('Save Image')),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           child: TextButton(
               style: TextButton.styleFrom(
                 primary: Colors.black,
                 backgroundColor: Colors.white,
               ),
               onPressed: (){}, child: Text('Go to Gallery')),
         ),
         Container(
           width: MediaQuery.of(context).size.width,
           child: TextButton(
               style: TextButton.styleFrom(
                 primary: Colors.black,
                 backgroundColor: Colors.white,
               ),
               onPressed: (){}, child: Text('Back')),
         ),
       ],
      ),
    );
  }
}
