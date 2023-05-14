// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp( MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
   QuoteList({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  int counter = 0;

    @override
  void initState() {
    super.initState();
    print('initState ran');
  }

  List<Quote> quotes = [
    Quote(author: 'DK', text: 'prvi quote'),
    Quote(author: 'DK', text: 'drugi quote'),
    Quote(author: 'DK', text: 'treci quote')
  ];
  Widget quoteTemplate(quote){
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          
            Center(
              child: Text(
                quote.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),
              ),
            ),
             Divider(
              height: 6.0,
              thickness: 3,
              color:Color.fromARGB(255, 46, 46, 46),
            ),
            Center(
              child: Text(
                quote.author,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15.0
                ),
              ),
            ),
            
          ],
          
        ),
        
      ),
   
    );
  }
  @override
  Widget build(BuildContext context) {
    print('build ran');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[900],
        foregroundColor: Color.fromARGB(255, 54, 54, 54),
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter += 1;
          }); 
        },
      ),
      backgroundColor: const Color.fromARGB(255, 44, 44, 44),
      appBar: AppBar(
        title: const Text('quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: 
      Column(
        children: [
          Column(
            children: quotes.map((quote) => quoteTemplate(quote)).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: Container(
              width: 200,
              height: 50,
              color: Colors.grey[900],
              child: Center(
                child: Text(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  'Counter is $counter'
                  ),
              ),
            ),
          ),
        ],
      )
    );
    
  }
}
