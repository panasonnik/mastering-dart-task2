import 'package:flutter/material.dart';
import 'models/person.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      //navbar, basic layout
      appBar: AppBar(
        //NavBar
        title: const Text("Task 1"),
        backgroundColor: const Color.fromRGBO(171, 131, 141, 1.0),
        foregroundColor: const Color(0xffffffff),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0), // відступ 20 пікселів від кожного краю
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello world!',
                  style: TextStyle(
                    fontSize: 26.0,
                  )),
              SizedBox(height: 50), // відступ між текстовими полями
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        //child == nest widget inside another widget
        backgroundColor: const Color.fromRGBO(171, 131, 141, 1.0),
        foregroundColor: const Color(0xffffffff),
        onPressed: () {
          debugPrint('Received click');
        },
        label: const Text("Click me"),
      ),
    ),
  ));
}
