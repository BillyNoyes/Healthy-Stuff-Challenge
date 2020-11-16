import 'package:flutter/material.dart';
import 'package:healthy_start/pages/home.dart';
import 'package:healthy_start/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
    },
  ));
}

