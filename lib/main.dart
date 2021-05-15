import 'package:expense_tracker/app/landing_page.dart';
import 'package:expense_tracker/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        title: 'Expense Tracker',
        theme: ThemeData(
          primarySwatch: Colors.pink /*Colors.blue*/,
          accentColor: Color(0xffff3378) /*Colors.blue[900]*/,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            centerTitle: true,
            textTheme: TextTheme(
              headline6: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 21.0,
              ),
            ),
          ),
        ),
        home: LandingPage(),
      ),
    );
  }
}
