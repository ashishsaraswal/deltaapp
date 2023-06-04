import 'package:deltaapp/pages/Third_tab.dart';
import 'package:deltaapp/widgets/crud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/most_active.dart';
import '../widgets/second.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: DropdownButton(
                    dropdownColor: Colors.black,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    items: [
                      DropdownMenuItem(
                        value: 'HIGHEST CAP',
                        child: Text('Best seller'),
                      ),
                      DropdownMenuItem(
                          child: Text(
                        'HIGHEST CAP',
                      ))
                    ],
                    onChanged: (value) {}),
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
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 36, 26, 26),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CrudTab(),
                ));
          },
        ));
  }
}
