import 'package:flutter/material.dart';
import 'package:login_signup/home.dart';
import 'package:login_signup/signup.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('TeaPost',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ))),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  CircleAvatar(
                      radius: 50.00,
                      backgroundImage: AssetImage('assets/logo.jfif')),
                  SizedBox(
                    height: 0.01,
                  ),
                  Container(
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        cursorColor: Colors.brown,
                        cursorHeight: 30,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email:",
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Mail";
                          } else if (!RegExp(r'^[\w]+@([\w]+\.)+[\w]{2,4}')
                              .hasMatch(val!)) {
                            return "Enter correct Mail";
                          } else {
                            return null;
                          }
                        },
                      )),
                  Container(
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: Colors.brown,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Password:",
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter password";
                          } else {
                            return null;
                          }
                        },
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                          onPressed: () => {
                            if (_formkey.currentState!.validate())
                              {print("Submitted")}
                            else
                              {print("Plz Enter valid Details")}
                          },
                          child: Text('Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                            child: Text('Signup',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('New Users First Must be Signup...',
                          style: TextStyle(color: Colors.black, fontSize: 10))
                    ],
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          child: Text(
                            'Go to Home =>',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
