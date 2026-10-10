import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Лабораторная работа2'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Раздел 1: Wrap с контейнерами
          Text('Задание 1: Wrap виджет', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(6, (index) {
              return Container(
                width: 100,
                height: 100,
                color: Colors.primaries[index % Colors.primaries.length],
                child: Center(child: Text('Контейнер $index')),
              );
            }),
          ),
          
          // Раздел 2: Column с текстовыми данными
          SizedBox(height: 20),
          Text('Задание 2: Column с информацией', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ФИО: карелин александр сергеевич', style: TextStyle(fontSize: 18)),
              Text('Год рождения: 2002', style: TextStyle(fontSize: 18)),
              Text('Группа: зисту23', style: TextStyle(fontSize: 18)),
            ],
          ),
          
          // Раздел 3: Column с Row и иконками
          SizedBox(height: 20),
          Text('Задание 3: Row с иконками', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.star, size: 36),
                  Icon(Icons.favorite, size: 36),
                  Icon(Icons.home, size: 36),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.message, size: 36),
                  Icon(Icons.settings, size: 36),
                ],
              ),
            ],
          ),
          
          // Раздел 4: Stack с разноцветными контейнерами
          SizedBox(height: 20),
          Text('Задание 4: Stack виджет', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Container(
            width: 200,
            height: 200,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(color: Colors.red, width: 200, height: 200),
                Container(color: Colors.yellow, width: 150, height: 150),
                Container(color: Colors.green, width: 100, height: 100),
                Container(color: Colors.blue, width: 50, height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

