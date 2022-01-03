import 'package:flutter/material.dart';
import 'package:formpage/login.dart';
import 'package:formpage/signup.dart';
import 'welcome.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAI6f27BiPYkqFs-FxCDS_DbDWz4WWaRAI",
        authDomain: "chatapp-8a929.firebaseapp.com",
        projectId: "chatapp-8a929",
        storageBucket: "chatapp-8a929.appspot.com",
        messagingSenderId: "728444772432",
        appId: "1:728444772432:web:58e2085174b8622aa5f155",
        measurementId: "G-ZL4PH3C34S"),
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => Welcome(),
        Login.id: (context) => Login(),
        Signup.id: (context) => Signup(),
      },
    );
  }
}
