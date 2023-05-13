import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'DK', text: 'prva pametna recenica'),
    Quote(author: 'DK', text: 'druga pametna recenica'),
    Quote(author: 'DK', text: 'treca pametna recenica')
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 18.0
              ),
            ),
            const Divider(
              height: 6.0,
              thickness: 3,
              color:Colors.black,
            ),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 15.0
              ),
            )
          ]
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text('pametne recenice'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
