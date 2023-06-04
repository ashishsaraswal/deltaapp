import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../widgets/most_active.dart';
import '../widgets/second.dart';

class Thirdtab extends StatelessWidget {
  const Thirdtab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Stocks',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          children: [
            StockList(),
            SizedBox(
              height: 10,
            ),
            Second(),
          ],
        ),
      ],
    );
  }
}
