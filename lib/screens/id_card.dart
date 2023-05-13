// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: MyApp()
));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int counter = 1;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          backgroundColor: Colors.grey[800],
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          centerTitle: true,
          leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
          backgroundColor: Colors.black,
          title: 
          Text(
            'ID Card',
            style: TextStyle(
              fontFamily: 'SerpentineSans',
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'AVATAR',
                  style: TextStyle(
                    fontFamily: '',
                    fontSize: 15,
                    color: Color.fromARGB(255, 75, 75, 75),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 12.0),
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/redavatar.png'),
                ),
              ),
            ),
            const Divider(
              height: 50,
              thickness: 3,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'David Kalabic',
                  style: TextStyle(
                    fontFamily: 'ChivoMono',
                    fontSize: 30,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'NAME',
                style: TextStyle(
                  fontFamily: '',
                  fontSize: 15,
                  color: Color.fromARGB(255, 75, 75, 75),
                ),
              ),
            ),
            const Divider(
              height: 50,
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  '$counter',
                  style: const TextStyle(
                    fontFamily: 'ChivoMono',
                    fontSize: 30,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'PROGRAMMING EXPIRIENCE',
                style: TextStyle(
                  fontFamily: '',
                  fontSize: 15,
                  color: Color.fromARGB(255, 75, 75, 75),
                ),
              ),
            ),
            const Divider(
              height: 50,
              thickness: 3,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  '17',
                  style: TextStyle(
                    fontFamily: 'ChivoMono',
                    fontSize: 30,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'AGE',
                style: TextStyle(
                  fontFamily: '',
                  fontSize: 15,
                  color: Color.fromARGB(255, 75, 75, 75),
                ),
              ),
            ),
            const Divider(
              height: 50,
              thickness: 3,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Email me at:',
                  style: TextStyle(
                    fontFamily: 'ChivoMono',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'davidkalabic777@gmail.com',
                style: TextStyle(
                  fontFamily: '',
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 4.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.amber,
                child: IconButton(
                  icon: const Icon(
                    Icons.mail,
                    color: Color.fromARGB(255, 105, 82, 13),
                  ),
                  onPressed: () {
                    print('user emailed succesfully');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}