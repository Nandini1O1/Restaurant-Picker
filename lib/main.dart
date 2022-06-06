import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
    'McDonald\'s',
    'Rosacoe\'s Chicken & Waffles & bees',
    'Olive Garden',
    'Pizza Hut',
    'Panda Express',
    'Subway',
    'Domino\'s',
  ];

  int currentIndex=-1;

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('What do you want to eat ?'),
                if(currentIndex != -1)
                Text(
                  restaurants[currentIndex],
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.only(top: 30.0)),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20.0),
                    primary: Colors.white,
                    backgroundColor: Color.alphaBlend(Colors.deepPurple, Colors.purple),
                  ),
                  onPressed: () {
                    updateIndex();
                  },
                  child: Text('Pick Restaurant'),

                ),
              ],
            ),
          ),
        )
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }
}

