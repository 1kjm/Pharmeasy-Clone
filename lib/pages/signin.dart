import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/components/custominputBox.dart';
import 'package:marketplace/pages/Home.dart';
import 'package:marketplace/pages/signup.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
          bottomOpacity: 0,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
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
                      "Sign In",
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
                          text: "Don't Have An Account?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(.45)),
                        ),
                        TextSpan(
                            text: "Sign Up",
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
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
