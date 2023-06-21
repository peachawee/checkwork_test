import 'package:checkwork_test/pages/listwork_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
                ),
              padding: EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/user_icon.png",
                    height: 60.0,
                  ),
                  const Text('user'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(hintText: 'Email Address'),
                    ),
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  Container(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(hintText: 'password'),
                    ),
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      onPrimary: Colors.deepPurpleAccent,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ListWorkPage()));
                    },
                    child: Icon(
                      Icons.navigate_next,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
