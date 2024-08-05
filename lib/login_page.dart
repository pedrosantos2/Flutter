import 'package:flutter/material.dart';
import 'package:teste_app/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
 String email = '';
 String password = '';
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 100,
                  child: Image.network('https://cdn.bitrix24.com.br/b23424923/landing/034/034e95d13c5da3d96772732b8f15a188/logo55_1x.png')
                ),
                Container(height: 20),
                TextField(
                  onChanged: (text){
                   email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  onChanged: (text){
                   password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                onPressed: (){
                  if(email == 'pedrin@pedrin.com' && password == '123'){
                   Navigator.of(context).pushNamed('/home');
                  }
                }, 
                child: Text('Entrar')
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}