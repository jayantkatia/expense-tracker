import 'package:expense_tracker/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthBase auth = Provider.of<AuthBase>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          TextButton(
            onPressed: auth.signOut,
            child: Text(
              "Sign Out",
            ),
          )
        ],
      ),
    );
  }
}
