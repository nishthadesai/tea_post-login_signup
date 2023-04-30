import 'package:flutter/material.dart';
import 'package:login_signup/items.dart';

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
                child: Image(
                  image: AssetImage('assets/lj.png'),
                  height: 70,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Welcome to TeaPost of LJ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  )),
              Image(
                image: AssetImage('assets/menu.png'),
                height: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Some popular Outlets',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage('assets/tea.png'),
                        height: 70,
                      ),
                      Text('Tea'),
                      Text('20/-'),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage('assets/samosa.png'),
                        height: 70,
                      ),
                      Text('Samosa(2)'),
                      Text('70/-'),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage('assets/noodles.png'),
                        height: 70,
                      ),
                      Text('Noodles'),
                      Text('110/-'),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage('assets/puff.png'),
                        height: 70,
                      ),
                      Text('Puff(2)'),
                      Text('50/-'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Item()),
                    );
                  },
                  child: Text(
                    'Explore Items =>',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.end,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
