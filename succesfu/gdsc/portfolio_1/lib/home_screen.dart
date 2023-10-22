import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rest api'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUsers,
      ),
    );
  }
}

void fetchUsers() {
  print('FetchUsers');
  final url = '';
  final uri = Uri.parse(url);
  http.get(uri);
}
