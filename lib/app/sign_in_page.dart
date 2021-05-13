import 'package:expense_tracker/app/email_sign_in_page.dart';
import 'package:expense_tracker/services/auth.dart';
import 'package:expense_tracker/widgets/custom_outline_social_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  void _signInWithGoogle() async {
    setState(() {
      _isLoading = true;
    });
    final AuthBase auth = Provider.of<AuthBase>(context, listen: false);
    try {
      await auth.signInWithGoogle();
    } on SignInException {} finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _signInWithEmail() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EmailSignInPage(),
      ),
    );
  }

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Sign In"),
        shadowColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomOutLineSocialButton(
              text: "Sign In With Email",
              onPressed: _isLoading ? null : _signInWithEmail,
              outlineColor: Theme.of(context).accentColor,
            ),
            SizedBox(height: 30),
            CustomOutLineSocialButton(
              assetName: "images/google-logo.png",
              text: "Sign In With Google",
              onPressed: _isLoading ? null : _signInWithGoogle,
              outlineColor: Colors.deepOrangeAccent[400] ?? Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }
}
