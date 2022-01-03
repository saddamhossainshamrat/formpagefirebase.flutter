import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Userpage extends StatefulWidget {
  const Userpage({Key? key}) : super(key: key);

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  final _auth = FirebaseAuth.instance;
  late User user;
  getCurrentUser() {
    try {
      final logedUser = _auth.currentUser;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FlatButton(
            textColor: Colors.blue,
            child: Text(
              'Back',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              //signup screen
            },
          )
        ],
      ),
    );
  }
}
