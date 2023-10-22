import 'package:flutter/material.dart';

void main() {
  runApp(Urapp());
}

class Urapp extends StatelessWidget {
  const Urapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: leilo(),
    );
  }
}

class leilo extends StatefulWidget {
  const leilo({super.key});

  @override
  State<leilo> createState() => _leiloState();
}

class _leiloState extends State<leilo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/lelo.png'),
      ),
    ));
    ElevatedButton(
      onPressed: () {
        // Navigator.push(
        //   context, MaterialPageRoute(builder: (context) => Urapp()));
      },
      child: Text('Done'),
      style: ElevatedButton.styleFrom(
          primary: Color(0xff00C7EB),
          onPrimary: Colors.white,
          minimumSize: Size(266, 44)),
    );
  }
}
