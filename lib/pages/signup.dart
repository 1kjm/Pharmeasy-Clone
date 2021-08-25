import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/components/custominputBox.dart';
import 'package:marketplace/pages/Home.dart';
import 'package:marketplace/pages/signin.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontFamily: "cardo",
                          fontSize: 35,
                          color: Colors.blueGrey[700],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  MyCustomInputBox("Name", "Ted"),
                  SizedBox(
                    height: 10,
                  ),
                  MyCustomInputBox("E-Mail", "example@email.com"),
                  SizedBox(
                    height: 10,
                  ),
                  MyCustomInputBox("Password", "********"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      width: scrWidth * 0.85,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[700],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Create An Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "ProductSans",
                              fontSize: 18,
                              color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already Have An Account?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(.45)),
                        ),
                        TextSpan(
                            text: "Sign In",
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              })
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
