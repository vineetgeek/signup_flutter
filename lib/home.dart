import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name, email, mobile, collegeName, pass;

  HomePage({
    required Key key,
    required this.name,
    required this.email,
    required this.mobile,
    required this.collegeName,
    required this.pass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('''Student's info'''),
      ),
      body: Form(
          child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(50.0),
            ),
            Image(
              image: AssetImage('images/vg.png'),
              height: 100.0,
              width: 100.0,
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(name),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(email),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(mobile),
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text(collegeName),
            ),
            ListTile(
              leading: Icon(Icons.password),
              title: Text(pass),
            ),
          ],
        ),
      )),
    );
  }
}
