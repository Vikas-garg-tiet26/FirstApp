import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/routes.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    // var name;
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/Pics/1.png",
                fit: BoxFit.cover,
                height: 500,
                // width: double.infinity,
              ),
              SizedBox(
                height: 20.0,
              ), //used instead of padding
              Text(
                "Welcome To My App $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter TIET UserName",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter TIET Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          changeButton = true;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 100,
                        height: 50,
                        // color: Colors.deepPurple,
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 20 : 8),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(100, 50)),
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
