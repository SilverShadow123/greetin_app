import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(greeting_app());
}

class greeting_app extends StatelessWidget {
  const greeting_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 18),
              ),
              Image.asset(
                'assets/images/pngwing.com.png',
                width: 200,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent),
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text('Button Pressed!'),
                      backgroundColor: Colors.cyan,
                      duration: Duration(seconds: 3),
                      action: SnackBarAction(
                          label: 'Undo',
                          textColor: Colors.yellow,
                          onPressed: () {}),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text('Press Me')),
            ],
          ),
        ],
      ),
    );
  }
}
