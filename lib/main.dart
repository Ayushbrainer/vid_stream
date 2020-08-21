import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_official_video_streamer/Auth/AuthCode.dart';
import 'package:the_official_video_streamer/Auth/AuthUI.dart';

void main() => runApp(StreamProvider<FirebaseUser>.value(
      value: AuthServ().user,
      child: MaterialApp(
        home: MyApp(),
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser>(context);
    print(user);
    return Scaffold(
      body: SignInPage(),
    );
  }
}
