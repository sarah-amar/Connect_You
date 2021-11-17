import 'package:connect_u/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';

class SignUpPage extends StatelessWidget{
    @override

    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    List socialMedia = [
      "f.png",
      "g.png",
      "t.png"
    ];
  
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
    body: Column(
      children: [
        // logo image
        Container(
          height: 250,
          decoration: const BoxDecoration(
            image: DecorationImage (
              image: AssetImage("assets/signup.png"),
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
                    "Create your account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey 
                      )
                  ),

                SizedBox(height: 30),

                //input
                // Container(
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     boxShadow: [
                //       BoxShadow(
                //         blurRadius: 10,
                //         offset: Offset(0,2),
                //         color: Colors.grey.withOpacity(0.5),
                //       )
                //     ]
                //   ),

                //   child: TextField(
                //     decoration: InputDecoration(
                //       hintText: "Name",
                //       focusedBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.white,
                //         ) 
                //       ),

                //       enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.white,
                //         ) 
                //       ),

                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10)
                //       ) 
                //   ),
                // )
                // ),
                
                SizedBox(height: 19),

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
                    controller: emailController,
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
                    controller: passwordController,
                    obscureText: true,
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
                
                SizedBox(height: 19),


                //input
                // Container(
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     boxShadow: [
                //       BoxShadow(
                //         blurRadius: 10,
                //         offset: Offset(0,2),
                //         color: Colors.grey.withOpacity(0.5),
                //       )
                //     ]
                //   ),

                //   child: TextField(
                //     decoration: InputDecoration(
                //       hintText: "Confirm your password",
                //       focusedBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.white,
                //         ) 
                //       ),

                      
                    
                //       enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.white,
                //         ) 
                //       ),

                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10)
                //       ) 
                //   ),
                // )
                // ),
              ],
            ),
          ),

          SizedBox(height: 40),

          GestureDetector(
            onTap: () {
              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
            width: 220,
            height: 50,
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
          ),

          SizedBox(height: 20),

          RichText(
            text: TextSpan(
              text: "Sign up with",
              style: TextStyle(
                color: Colors.grey[800]
              )
            ),
          ),

          Wrap(
                children: List<Widget>.generate(
                  3,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(
                        "assets/"+socialMedia[index]
                      ),
                    )
                      );
                  }
                ),
              ),


          SizedBox(height: 20),

          RichText(
            text: TextSpan(
              text: "Already have an account?",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 14
              ),

              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                  text: " Sign in!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                )
              ]
            )
          )
      ]
    )
      );
    }
}

