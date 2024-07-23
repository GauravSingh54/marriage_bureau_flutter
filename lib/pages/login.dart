import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome Back', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
            Text('Login to your Account', style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 300,
                child: TextField(
                  
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    labelText: ('Email Id'),
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.person_outline_sharp, size: 40,),
                    prefixIconColor: Colors.white,
                    fillColor: Colors.pinkAccent,
                    filled: true,
                    
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 300,
                child: TextField(
                  
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    labelText: ('Password'),
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.fingerprint_rounded, size: 40,),
                    prefixIconColor: Colors.white,
                    fillColor: Colors.pinkAccent,
                    filled: true,
                    
                  ),
                ),
              ),
            )
          ],

          
        ),

      ),
    );
  }
}