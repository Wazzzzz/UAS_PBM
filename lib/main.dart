import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_page_1/screens/login_view.dart';
import 'package:login_page_1/screens/register_view.dart';
var listaccount = [
  ['ijul123', 'ijul321', '081364641212', 'Jl. Kenangan'],
  ['pawas123', 'pawas321', '085447479898', 'Jl. Dulu']
];
var mainaccount = [
  
];
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Register Page",
    initialRoute: "/",
    routes: {
      "/" : (context) => LoginPage(),
      RegisterPage.routeName : (context) => RegisterPage(),
    },
  ));
}