import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmployeeRoles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('دور الموظف'),
          backgroundColor: Colors.redAccent,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Column());
  }
}
