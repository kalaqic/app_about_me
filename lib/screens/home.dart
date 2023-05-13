// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[900],
      body:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/redavatar.png'),),
              ),
              Divider(thickness: 3),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  style: TextStyle(color: Colors.white),
                  'Ovdje pogledaj moje quotove!'
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  ),
                  label: Text('DK quotes'),
                  icon: Icon(Icons.message_outlined),
                  onPressed: () {
                    Navigator.pushNamed(context, '/quotes');
                  }, 
                ),
              ) ,
              Divider(thickness: 3),
                Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  style: TextStyle(color: Colors.white),
                  'Ovdje pogledaj moj stats!'
                  ),
              ),
              Center(
                
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  ),
                  label: Text('DK Stats'),
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.pushNamed(context, '/id_card');
                  }, 
                ),
              ),
              Divider(thickness: 3),
            ],
          ),);
  }
}