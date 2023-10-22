import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:prototype_application_1/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}

class Loginpage extends StatefulWidget {
  Loginpage({super.key});
  @override
  State<Loginpage> createState() => _LoginpageState();
  TextEditingController nameController = TextEditingController();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(47, 204, 152, 0)),
          Container(
            child: Text('         Welcome Back!',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
          ),
          Container(
            width: 266,
            height: 40,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(47, 10, 47, 0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Phone/Email', border: OutlineInputBorder()),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(47, 70, 47, 27),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Uapp()));
              },
              child: Text('Get OTP'),
              style: ElevatedButton.styleFrom(
                  maximumSize: Size(66, 44), primary: Color(0xff00C7EB)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 15,
            height: 18,
            child: Text(
              'or',
              style: TextStyle(color: Color(0xff00C7EB)),
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(90, 26, 98, 90),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Register with Google'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, onPrimary: Colors.black),
              )),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Text("                    Don't Have An Account?"),
                TextButton(
                  onPressed: null,
                  child: Text('Sign Up'),
                  style: TextButton.styleFrom(primary: Color(0xff00C7EB)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
