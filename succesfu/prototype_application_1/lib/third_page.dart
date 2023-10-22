import 'package:flutter/material.dart';
import 'package:prototype_application_1/fourth_one.dart';

void main() {
  runApp(Uapp());
}

class Uapp extends StatelessWidget {
  const Uapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: lelo(),
    );
  }
}

class lelo extends StatefulWidget {
  const lelo({super.key});

  @override
  State<lelo> createState() => _leloState();
}

class _leloState extends State<lelo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => leilo()),
            );
          },
          child: Text('Done'),
          style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
              onPrimary: Colors.white,
              minimumSize: Size(66, 44)),
        ));
  }
}
