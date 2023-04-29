import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ))),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                  child: Text(
                'Welcome to Teapost',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              )),
              SizedBox(
                height: 15,
              ),
              Text('Menu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  )),
              Image(
                image: AssetImage('assets/menu.jfif'),
                height: 300,
              ),
        Center(
          child: Text(
            'Some popular Outlets',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),),
        ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage('assets/thepla.jfif'),
                        height: 70,
                      ),
                      Text('Thepla'),
                      Text('40/-'),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage('assets/samosa.jfif'),
                        height: 70,
                      ),
                      Text('Samosa(2)'),
                      Text('60/-'),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage('assets/noodles.jfif'),
                        height: 70,
                      ),
                      Text('Noodles'),
                      Text('90/-'),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage('assets/puff.jfif'),
                        height: 70,
                      ),
                      Text('Puff'),
                      Text('25/-'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
