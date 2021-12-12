

import 'package:flutter/material.dart';
import 'package:login_page_1/main.dart';
import 'package:login_page_1/screens/about_us.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
          'Profile',
          style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 25.0, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage:
                    AssetImage("assets/images/avatar/icon_register.png"),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 50.0,
              ),
              ListTile(
                title: Text("Username",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                subtitle: Text(
                  mainaccount[0].toString(),
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0),
                ),
              ),
              ListTile(
                title: Text("No Telepon",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                subtitle: Text(
                  mainaccount[2].toString(),
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0),
                ),
              ),
              ListTile(
                title: Text("Alamat",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                subtitle: Text(
                  mainaccount[3].toString(),
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AboutUs();
                          }));
                        },
                        child: Text(
                          'About Us',
                          style: TextStyle(
                              fontFamily: 'Montserrat', fontSize: 15.0),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
