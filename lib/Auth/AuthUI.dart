import 'package:flutter/material.dart';
import 'package:the_official_video_streamer/Auth/AuthCode.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final AuthServ _serv = AuthServ();
  final GlobalKey _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String email;
    String password;
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign IN"),
        ),
        body: Form(
            key: _globalKey,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0),
                      borderRadius: BorderRadius.circular(14.5)),
                  width: MediaQuery.of(context).size.width - 30,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      // border: InputBorder(borderSide: BorderSide())
                    ),
                    onChanged: (v) {
                      setState(() {
                        email = v;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0),
                      borderRadius: BorderRadius.circular(14.5)),
                  width: MediaQuery.of(context).size.width - 30,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      // border: InputBorder(borderSide: BorderSide())
                    ),
                    onChanged: (v) {
                      setState(() {
                        password = v;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  onPressed: () async {
                    dynamic result = _serv.SignInWithPassword(email, password);
                    if (result == null) {
                      print("Error");
                    } else {}
                  },
                  child: Text("Sign In"),
                )
              ],
            )));
  }
}
