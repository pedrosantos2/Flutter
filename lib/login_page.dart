import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
 String email = '';
 String password = '';

 Widget _body(){
  return SingleChildScrollView(
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
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
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
                      labelText: 'Senha',
                      border: OutlineInputBorder()
                    ),
                    ),
                  SizedBox(height: 15,),
                  ElevatedButton(
                  onPressed: (){
                  if(email == 'pedrin@pedrin.com' && password == '123'){
                   Navigator.of(context).pushReplacementNamed('/home');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'Entrar', 
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,)
                  )
                ),
                      ],
                    ),
                  ),
                ),
               
              ],
            ),
          ),
        ),
      );
 }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
                'assets/images/print.png',
                fit: BoxFit.cover,
              ),
          ),
          _body()
        ],
      )
    );
  }
}