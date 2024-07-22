import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupMarriageBureau() async {
    await Future.delayed(const Duration(seconds: 3), (){
    Navigator.pushReplacementNamed(context, '/home');
  });
  

    
  }
  @override
  void initState() {
    super.initState();
    setupMarriageBureau();
  }
  @override
  
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
        body: Center(
          child: SpinKitFadingCube(
            color: Colors.cyan,
            size: 100,
          ),

        )
    );
  }
}