import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stinky_fish/signup.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[500],
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    height: constraints.maxHeight * 0.6,
                    width: constraints.maxWidth * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Username",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.02,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.black,
                              onPressed: () {},
                              padding: EdgeInsets.all(20),
                              child: Text("LOGIN"),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                            child: Text("Register "),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      height: constraints.maxHeight * 0.5,
                      width: constraints.maxWidth * 0.5,
                      child: Image.asset("onboarding.png"))
                ],
              ));
        },
      ),
    );
  }
}
