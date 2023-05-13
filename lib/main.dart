// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:world_time/screens/home.dart';
import 'package:world_time/screens/id_card.dart';
import 'package:world_time/screens/loading.dart';
import 'package:world_time/screens/quotes/quotes.dart';

void main() {
  runApp ( MaterialApp(
    initialRoute: '/home',
    routes: {
      '/' :(context) => loading(),
      '/home' : (context) => home(),
      '/quotes' :(context) => QuoteList(),
      '/id_card' : (context) => MyApp()
    }
  ));}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}