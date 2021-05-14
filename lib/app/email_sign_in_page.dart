import 'package:expense_tracker/app/email_sign_in_form.dart';
import 'package:flutter/material.dart';

class EmailSignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Sign In With Email"),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.close,
        //     color: Colors.black,
        //   ),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF6EBF3), Color(0xFFFFFFFF)],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Card(
                  child: EmailSignInForm(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
