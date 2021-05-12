import 'package:expense_tracker/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthBase auth = Provider.of<AuthBase>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Column(children: [ElevatedButton(onPressed: auth.signInWithGoogle, child: Text("Sign In With Google"))]),
    );
  }
}
