// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 450),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('loading '),
            Icon(Icons.replay_outlined),
          ],
      
      
        ),
      )
    );
  }
}