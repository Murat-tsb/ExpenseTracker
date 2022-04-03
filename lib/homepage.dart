import 'package:flutter/material.dart';
import 'package:money_tracker/top_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            TopNeuCard(
              balance: '\$ 20,000',
              expence: '\$ 3000',
              income: '\$5000',
            ),
            Expanded(
              child: Container(
                color: Colors.blue[300],
                child: Center(
                  child: Text('Transactions'),
                ),
              ),
            ),
            Container(
              height: 25,
              child: Center(
                child: Text('Button'),
              ),
            ),
          ],
        ));
  }
}
