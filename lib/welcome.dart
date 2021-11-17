import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context){
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
                Center(
                  child: Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.black,
                  )
                ),
                ),

                Container(
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
                      "Sign out",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      )
                    )
                  )
                ),
              ]
            ),
          ),   
      ]
    )
    );
  }
}