import 'package:flutter/material.dart';

class TopNeuCard extends StatelessWidget {
  final String balance;
  final String income;
  final String expence;
  TopNeuCard(
      {required this.balance, required this.income, required this.expence});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'B A L A N C E',
              style: TextStyle(color: Colors.grey[500], fontSize: 16),
            ),
            Text(
              '\$ 10000',
              style: TextStyle(color: Colors.grey[800], fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(Icons.arrow_upward),
                  Column(
                    children: [Text('Income'), Text(income)],
                  )
                ]),
                Row(children: [
                  Icon(Icons.arrow_downward),
                  Column(
                    children: [Text('Income'), Text(expence)],
                  )
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
