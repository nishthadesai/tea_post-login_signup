import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text('Signup',style: TextStyle(color:Colors.white,fontSize: 30,))),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  CircleAvatar
                    (radius: 50.00,
                      backgroundImage: AssetImage('assets/login.jfif')),

                  SizedBox(height: 1,),

                  Container(margin: EdgeInsets.all(20),
                      child: TextFormField( cursorColor: Colors.brown,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(labelText: "Name:",),
                        validator: (val)
                        {
                          if(val!.isEmpty)
                          {
                            return "Please Fill This";
                          }
                          else if( !RegExp(r'^[[a-z A-Z]').hasMatch(val!))
                          {
                            return "Enter Proper Name";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      )
                  ),

                  Container(margin: EdgeInsets.all(20),
                      child: TextFormField(cursorColor: Colors.brown,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: "Number:",),
                        validator: (val)
                        {
                          if(val!.isEmpty)
                          {
                            return "Please Fill This";
                          }
                          else if(!RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$').hasMatch(val!))
                          {
                            return "Enter Number Properly";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      )
                  ),

                  Container(margin: EdgeInsets.all(20),
                      child: TextFormField(cursorColor: Colors.brown,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(labelText: "Email:",),
                        validator: (val)
                        {
                          if(val!.isEmpty)
                          {
                            return "Please Fill This";
                          }
                          else if(!RegExp(r'^[\w]+@([\w]+\.)+[\w]{2,4}').hasMatch(val!))
                          {
                            return "Enter correct Mail";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      )
                  ),

                  Container(margin: EdgeInsets.all(20),
                      child: TextFormField(obscureText: true,cursorColor: Colors.brown,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(labelText: "Password:",),
                        validator: (val)
                        {
                          if(val!.isEmpty)
                          {
                            return "Plz Enter Password";
                          }
                          else
                          {
                            return null;
                          }
                        },
                      )
                  ),

                  SizedBox(height: 1,),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.red),
                          onPressed: () => {
                            if(_formkey.currentState!.validate())
                              {
                                print("Submitted")
                              }
                            else
                              {
                                print("Plz Enter valid Details")
                              }
                          }, child: Text('Signup'),),
                        SizedBox(width: 5,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}