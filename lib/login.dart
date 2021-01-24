import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: Center(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  boxShadow: [BoxShadow(offset: Offset(3, 5))],
                  borderRadius: BorderRadius.circular(15)),
              height: constraints.maxHeight * 0.5,
              width: constraints.maxWidth * 0.7,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: "Username"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Password"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text("LOGIN"),
                      ),
                    )
                  ],
                ),
              ),
            )),
          );
        },
      ),
    );
  }
}
