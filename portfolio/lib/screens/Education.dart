import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Row(
            children: [
              //padding: EdgeInsets.all(10),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('lib/assets/school.png'),
              ),
              Padding(padding: EdgeInsets.all(6)),
              Text(
                '(St. Pauls Academy )',
                style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('lib/assets/college.png'),
                ),
                Padding(padding: EdgeInsets.all(6)),
                Text(
                  '(Ajay Kumar Garg)',
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
