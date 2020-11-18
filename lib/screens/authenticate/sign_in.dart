import 'package:flutter/material.dart';
import 'package:waiger_app/services/auth.dart';

class SignIn extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[250],
        elevation: 0.0,
        // title: Image.asset('waiger_logo_test.png', fit: BoxFit.cover)
        title: Text('WaiGER'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: RaisedButton(
            child: Text('Sign in test'),
            onPressed: () async {
              dynamic result = await _auth.signInAnon();
              if(result == null){
                print('error signing in');
              } else{
                print('signed in');
                print(result.uid);
              }
            },
            ),
          ),
    );
  }
}