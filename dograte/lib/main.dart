import 'package:flutter/material.dart';

import './dog_list.dart';
import './dog_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'We rate dogs',
      theme: ThemeData(brightness: Brightness.dark),
      home: MyHomePage(title: 'We rate dogs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var initialDoggos = <Dog>[]
    ..add(new Dog('Ruby', 'Portland, OR, USA',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(new Dog('Rex', 'Seattle, WA, USA', 'A Very Good Boy'))
    ..add(new Dog('Rod Stewart', 'Prague, CZ', 'A Very Good Boy'))
    ..add(new Dog('Herbert', 'Dallas, TX, USA', 'A Very Good Boy'))
    ..add(new Dog('Buddy', 'North Pole, Earth', 'A Very Good Boy'));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:
          AppBar(title: Text(widget.title), backgroundColor: Colors.black87),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.indigo[800],
            Colors.indigo[700],
            Colors.indigo[600],
            Colors.indigo[400],
          ],
        )),
        child: Center(
          child: DogList(initialDoggos),
        ),
      ),
    );
  }
}
