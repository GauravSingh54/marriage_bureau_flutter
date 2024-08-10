// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   late List<String> countries;
//   late List<String> shorts;

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     final args = ModalRoute.of(context)!.settings.arguments as Map;
//     countries = args['countries'];
//     shorts = args['shorts'];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.bottomCenter,
//                 end: Alignment.topCenter,
//                 colors: [
//                   Color.fromARGB(255, 245, 141, 176),
//                   Colors.white,
//                 ]),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset('assets/logo 1.png'),
//               Container(
//                   padding: const EdgeInsets.all(40),
//                   child: ElevatedButton.icon(
//                     onPressed: () {
//                       Navigator.pushReplacementNamed(
//                         context,
//                         '/signup',
//                         arguments: {'countries': countries, 'shorts': shorts},
//                       );
//                     },
//                     icon: const Icon(
//                       Icons.mail,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                     label: const Text(
//                       "Sign Up With Email",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.pinkAccent,
//                     ),
//                   )),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Text('Already have an account?',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold)),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacementNamed(context, '/login',
//                           arguments: {
//                             'countries': countries,
//                           });
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.pinkAccent,
//                     ),
//                     child: const Text(
//                       'Login In',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 245, 141, 176),
                  Colors.white,
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo 1.png'),
              Container(
                  padding: const EdgeInsets.all(40),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/signup',
                        arguments: {
                          'countries': countries,
                          'countryCodes': countryCodes
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 30,
                    ),
                    label: const Text(
                      "Sign Up With Email",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Already have an account?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login',
                          arguments: {
                            'countries': countries,
                            'countryCodes': countryCodes
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                    ),
                    child: const Text(
                      'Login In',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
