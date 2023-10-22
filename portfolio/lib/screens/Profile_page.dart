import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurple[300],
                  radius: 85,
                  backgroundImage: AssetImage('lib/assets/c.png'),
                ),
              ),
            ),
          ),
          Text(
            'Hi, I am ',
            style: TextStyle(
                fontSize: 28, fontStyle: FontStyle.italic, color: Colors.white),
          ),
          Text(
            'Akarsh Sahlot',
            style: TextStyle(
                fontSize: 32, fontStyle: FontStyle.italic, color: Colors.white),
          ),
          Text(
            '(frontend flutter developer)',
            style: TextStyle(
                fontSize: 28, fontStyle: FontStyle.italic, color: Colors.white),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.deepPurple[300],
                backgroundImage: AssetImage('lib/assets/java.png'),
                radius: 25,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.deepPurple[300],
                radius: 25,
                backgroundImage: AssetImage('lib/assets/c.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.deepPurple[300],
                radius: 25,
                backgroundImage: AssetImage('lib/assets/linux.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.deepPurple[300],
                radius: 25,
                backgroundImage: AssetImage('lib/assets/python.png'),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
