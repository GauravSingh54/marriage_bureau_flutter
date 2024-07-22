import 'package:flutter/material.dart';
import 'package:marriage_bureau_flutter/pages/home.dart';
import 'package:marriage_bureau_flutter/pages/login.dart';
import 'package:marriage_bureau_flutter/pages/signup.dart';
import 'package:marriage_bureau_flutter/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const Loading(),
    '/home': (context) => const Home(),
  },
));
