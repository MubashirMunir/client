import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController{
  TextEditingController password =TextEditingController();
  TextEditingController email =TextEditingController();


  FirebaseFirestore firestore =FirebaseFirestore.instance;


  Future<void> login()async {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.toString(),
      password: password.toString(),
    );  }

}


