import 'package:connect_u/login.dart';
import 'package:connect_u/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController{

  // AuthController is accesible from all pages : create an instance
  static AuthController instance = Get.find(); //using : AuthController.instance.....
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user){
    if(user==null) {
      print("Login Page");
      Get.offAll(()=>LoginPage());
    }
    else {
      Get.offAll(()=>WelcomePage());
    }
  }

  void register (String email, password){
    try {
    auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    catch (err) {
      //message user if it's a fail
      Get.snackbar("About user", "User message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        "Account creation failed",
      ),
      messageText: Text(
        err.toString(),
        style: TextStyle(
          color: Colors.white
        )
      )
      );
    }
  }
}