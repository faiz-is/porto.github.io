import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  Future<bool> saveTransactions() {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return users.add({"jimmy": true, "lol": "sample"}).then((_) => true).catchError((error) => false);
  }

  @override
  Widget build(BuildContext context) {
    saveTransactions();
    return const Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          child: Center(
            child: Text(
              "hello world",
              style: TextStyle(color: Color(0xFF00CD41)),
            ),
          ),
        ));
  }
}




//save data transaction to firebase

