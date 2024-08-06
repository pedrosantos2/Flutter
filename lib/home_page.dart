import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';

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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 2, 141, 88)),
              currentAccountPicture: ClipOval(
                child: Image.network('https://media.licdn.com/dms/image/D4D03AQGYwEcM3ZbmcA/profile-displayphoto-shrink_800_800/0/1713530601211?e=1728518400&v=beta&t=-ZkvKc7BeS0U0mZ_Xp9MyOaHmXX-S6eedtgzlZe0SHU')
                ),
              accountName: Text('Pedro Santos'), 
              accountEmail: Text('pedro@systextil.com'),
              
              ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Ínicio'),
              subtitle: Text('tela de início'), 
              onTap: (){
                print('home');
              }, 
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('Logout'),
              subtitle: Text('Finalizar Sessão'), 
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              }, 
            )
          ],
        ),
      ),
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