import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            CircleAvatar(
              backgroundImage: AssetImage('lib/assets/basketball.png'),
              radius: 49,
            ),
            Text('i am a state level basketball player',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ]),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            CircleAvatar(
              backgroundImage: AssetImage('lib/assets/hacker.png'),
              radius: 49,
            ),
            Text('I am good at ethical hacking',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ]),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(children: [
            CircleAvatar(
              backgroundImage: AssetImage('lib/assets/dance.png'),
              radius: 49,
            ),
            Text('I am good in dancing',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ]),
        ),
      ]),
    );
  }
}
