import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/src/nav_button.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyDesktopBuddy extends StatefulWidget {
  const MyDesktopBuddy({super.key});

  @override
  State<MyDesktopBuddy> createState() => _MyDesktopBuddyState();
}

class _MyDesktopBuddyState extends State<MyDesktopBuddy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.workspaces,
              color: Colors.white,
            ),
          ],
          backgroundColor: Colors.deepPurple,
          color: Colors.deepPurple.shade200,
          animationDuration: Duration(microseconds: 700),
        ),
        // backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title: Text('profile'),
          backgroundColor: Colors.deepPurple.shade200,
        ),
        //drawer: Drawer(
        //backgroundColor: Colors.deepPurple.shade200,

        body: Row(
          
          children: [
          Container(
              width: 200,
              color: Colors.deepPurple[200],
          ), 
            Column(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      height: 250,
                      color: Color.fromARGB(66, 209, 132, 132),
                    )),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.deepPurple[300],
                            height: 120,
                          ),
                        );
                      }))
            ]),
          ],
        ));
  }
}
