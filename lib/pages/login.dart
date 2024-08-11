import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late List<String> countries;
  late Map<String, String> countryCodes;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    countries = args['countries'];
    countryCodes = args['countryCodes'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Login to your Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 300,
                child: TextField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    hintText: ('Email Id'),
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.person_outline_sharp,
                      size: 40,
                    ),
                    prefixIconColor: Colors.white,
                    fillColor: Colors.pinkAccent,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
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
                    hintText: ('Password'),
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.fingerprint_rounded,
                      size: 40,
                    ),
                    prefixIconColor: Colors.white,
                    fillColor: Colors.pinkAccent,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password?'),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        const WidgetStatePropertyAll<Color>(Colors.white),
                    shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: const BorderSide(
                                color: Colors.pink, width: 1)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Register you Account?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/signup',
                          arguments: {
                            'countries': countries,
                            'countryCodes': countryCodes,
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
