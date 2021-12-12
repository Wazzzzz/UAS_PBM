import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'About Us',
          style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 25.0, color: Colors.white),
              
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Makanan Sehat', style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),),
            Text('Version 1.0.0', style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.white),),
            SizedBox(height: 20.0,),
            CircleAvatar(
                radius: 80.0,
                backgroundImage:
                    AssetImage("assets/images/avatar/foodanddrink.png"),
                backgroundColor: Colors.white,),
            SizedBox(height: 20.0,),
            Text('© 2019-2021 Makanan Sehat Inc.', style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
