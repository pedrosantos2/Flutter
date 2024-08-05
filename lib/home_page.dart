import 'package:flutter/material.dart';
import 'package:teste_app/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
  
}

class HomePageState extends State<HomePage>{
  int counter = 0;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.red,
        actions: [
          CustomSwitch(),
        ],
      ),

      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contador: $counter'),
            ],
            ),
      ),

       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {  
            setState(() {
            counter++;
          }); },
      ),
    );
  }

}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.darkTheme,
          onChanged: (value){
           AppController.instance.changeTheme();
    });
  }
}