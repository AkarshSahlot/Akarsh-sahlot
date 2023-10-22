import 'package:flutter/material.dart';
import 'package:prototype_application_1/second_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onwy(),
    );
  }
}

class onwy extends StatefulWidget {
  const onwy({super.key});

  @override
  State<onwy> createState() => _onwyState();
}

class _onwyState extends State<onwy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Container(
        padding: EdgeInsets.fromLTRB(59, 513, 59, 10),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/Onwy.png'))),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Login'),
          style: ElevatedButton.styleFrom(
            primary: Color(0xff00C7EB),
            minimumSize: Size(266, 44),
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Loginpage()),
          );
        },
        child: Text('Register!'),
        style: ElevatedButton.styleFrom(
            primary: Color(0xff282828), minimumSize: Size(265, 44)),
      )
    ])));
  }
}
