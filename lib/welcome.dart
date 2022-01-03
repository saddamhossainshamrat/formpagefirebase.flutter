import 'package:flutter/material.dart';
import 'package:formpage/login.dart';
import 'package:formpage/signup.dart';

class Welcome extends StatefulWidget {
  static String id = 'welcome';
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation anime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    //anime = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
    anime =
        ColorTween(begin: Colors.blue, end: Colors.black54).animate(controller);
    //controller.reverse(from: 1);
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(anime.value);
    });
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 1);
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    // print(controller.value);
    // print(anime.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: anime.value,
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            SizedBox(
              height: 125,
            ),
            Image(
              image: AssetImage("images/logo.png"),
              height: 100,
              width: 100,
            ),
            Hero(
              tag: 'Title',
              child: Text(
                'ChatBox Logo',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 50),
              ),
            ),
            Card(
              child: FlatButton(
                color: Colors.blue[300],
                onPressed: () {
                  Navigator.pushNamed(context, Login.id);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return Login();
                  // }));
                },
                child: Center(
                  child: Text('Login'),
                ),
              ),
            ),
            Card(
              child: FlatButton(
                color: Colors.blue[300],
                onPressed: () {
                  Navigator.pushNamed(context, Signup.id);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return Signup();
                  // }));
                },
                child: Center(
                  child: Text('Sign Up'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
