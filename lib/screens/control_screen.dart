import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharepreferences/screens/home_screen.dart';
import 'package:sharepreferences/screens/login_screen.dart';


class ControlScreen extends StatefulWidget {



  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  String? email;

  getData ()async{
    SharedPreferences preferences= await SharedPreferences.getInstance();
    setState(() {
      email=preferences.getString('email');
      //preferences.remove('email');

      print(email);


    });

  }
  @override
  void initState() {

    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return email==null? LoginScreen() :HomeScreen();
  }
}
