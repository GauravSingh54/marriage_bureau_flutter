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

  void setupMarriageBureau() async {
    await fetchCountries();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'countries': countries,
    });
  }

  Future<void> fetchCountries() async {
    final Uri apiurl = Uri.parse('https://restcountries.com/v3.1/all');
    http.Response response = await http.get(apiurl);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      setState(() {
        countries = data.map((country) => country['name']['common'] as String).toList();
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
