import 'package:dart4/utils/name_animals.dart';
import 'package:dart4/view/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: NameAnimals.animals,
      debugShowCheckedModeBanner: false,
      home: PageHome(),
    );
  }
}
