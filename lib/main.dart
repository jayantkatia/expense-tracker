import 'package:expense_tracker/addBudgetExpense.dart';
import 'package:expense_tracker/app/landing_page.dart';
import 'package:expense_tracker/services/auth.dart';
import 'package:expense_tracker/updateBudget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: UpdateBudget(),
      ),
    );
  }
}
