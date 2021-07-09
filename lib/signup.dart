import 'package:flutter/material.dart';
// import 'package:signupapp/home.dart';
import 'home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autovalidate = false;

  late String name, email, mobile, collegeName, pass;

  get input => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Image(
                  image: AssetImage('images/vg.png'),
                  width: 100.0,
                  height: 100.0,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter name';
                      }
                    },
                    decoration: InputDecoration(labelText: 'Name'),
                    onSaved: (input) => name = input!,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter Email';
                      }
                    },
                    decoration: InputDecoration(labelText: 'Email'),
                    onSaved: (input) => email = input!,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter Mobile';
                      }
                    },
                    decoration: InputDecoration(labelText: 'Mobile'),
                    onSaved: (input) => mobile = input!,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: TextFormField(
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter College Name';
                      }
                    },
                    decoration: InputDecoration(labelText: 'College Name'),
                    onSaved: (input) => collegeName = input!,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.password),
                  title: TextFormField(
                    obscureText: true,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Enter Password';
                      }
                    },
                    decoration: InputDecoration(labelText: '****'),
                    onSaved: (input) => pass = input!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ButtonTheme(
                      height: 40.0,
                      minWidth: 200.0,
                      child: RaisedButton(
                        onPressed: _sendToNextScreen,
                        color: Colors.orange,
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _sendToNextScreen() {
    if (_key.currentState!.validate()) {
      //saved data to global keys
      _key.currentState!.save();
      //send data to next screen
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    name: name,
                    mobile: mobile,
                    email: email,
                    collegeName: collegeName,
                    pass: pass,
                    key: _key,
                  )));
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
  }
}
