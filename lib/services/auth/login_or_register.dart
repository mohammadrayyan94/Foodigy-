import 'package:flutter/material.dart';
import 'package:fooddelivery/login.dart';
import 'package:fooddelivery/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginOrRegister> {
  bool showLoginPage =true;
  void togglePages(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){return Login(onTap: togglePages);}else{return RegisterPage(onTap: togglePages);}
  }
}