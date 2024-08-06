import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/login_page.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(Object context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) { 
        return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.red,
          brightness: AppController.instance.darkTheme ? Brightness.dark : Brightness.light,
          ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
        },
      );
      },
    );
  }
}