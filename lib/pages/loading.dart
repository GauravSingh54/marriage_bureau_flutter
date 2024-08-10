// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Loading extends StatefulWidget {
//   const Loading({super.key});

//   @override
//   State<Loading> createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {
//   List<String> countries = [];
//   List<String> shorts = [];

//   void setupMarriageBureau() async {
//     await fetchCountries();
//     Navigator.pushReplacementNamed(context, '/home', arguments: {
//       'countries': countries,
//       'shorts': shorts,
//     });
//   }

//   Future<void> fetchCountries() async {
//     final Uri apiurl = Uri.parse('https://restcountries.com/v3.1/all');
//     http.Response response = await http.get(apiurl);

//     final Uri apiurl2 = Uri.parse(
//         'https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.12/js/utils.js');
//     http.Response response2 = await http.get(apiurl2);

//     if (response.statusCode == 200) {
//       List<dynamic> data = jsonDecode(response.body);
//       List<dynamic> data2 = jsonDecode(response2.body);
//       setState(() {
//         countries =
//             data.map((country) => country['name']['common'] as String).toList();
//         shorts = data2.map((short) => short['var F'] as String).toList();
//       });
//     } else {
//       throw Exception('Failed to load countries');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     setupMarriageBureau();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: SpinKitFadingCube(
//           color: Colors.cyan,
//           size: 100,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  List<String> countries = [];
  Map<String, String> countryCodes = {};

  void setupMarriageBureau() async {
    await fetchCountries();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'countries': countries,
      'countryCodes': countryCodes,
    });
  }

  Future<void> fetchCountries() async {
    final Uri apiurl = Uri.parse('https://restcountries.com/v3.1/all');
    http.Response response = await http.get(apiurl);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      setState(() {
        countries =
            data.map((country) => country['name']['common'] as String).toList();
        countryCodes = Map.fromEntries(
          data.map((country) => MapEntry(
                country['name']['common'] as String,
                (country['idd']['root'] ?? '') +
                    (country['idd']['suffixes'] != null
                        ? country['idd']['suffixes'].join('')
                        : ''),
              )),
        );
      });
    } else {
      throw Exception('Failed to load countries');
    }
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
      ),
    );
  }
}
