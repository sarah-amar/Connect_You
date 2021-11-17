import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

Widget build(BuildContext context) {
  return Scaffold (
    backgroundColor: Colors.white,
    body: Column(
      children: [
        // logo image
        Container(
          height: 250,
          decoration: const BoxDecoration(
            image: DecorationImage (
              image: AssetImage("assets/loginimg.png"),
              fit: BoxFit.cover
            ),
            ),
          ),

          // Main container
          Container(
            margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  )
                  ),

                Text(
                    "Sign into your account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey 
                      )
                  ),

                SizedBox(height: 30),

                //input
                Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(17),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(0,2),
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ]
                  ),

                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ) 
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ) 
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ) 
                  ),
                )
                ),
                
                SizedBox(height: 19),

                //input
                Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(17),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(0,2),
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ]
                  ),

                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ) 
                      ),

                      
                    
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ) 
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ) 
                  ),
                )
                ),
              
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Colors.grey
                      )
                    )
                  ],)
              ],
            ),
          ),

          SizedBox(height: 80),

          Container(
            width: 220,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage (
                image: AssetImage("assets/loginbtn.png"),
                fit: BoxFit.cover
              ),
            ),

            child: Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                )
              )
            )
          ),

          SizedBox(height: 90),

          RichText(
            text: TextSpan(
              text: "Don\'t have an account?",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 14
              ),

              children: [
                TextSpan(
                  text: " Create.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
                )
              ]
            )
          )
      ]
    )
  );
}
}


