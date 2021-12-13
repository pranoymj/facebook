import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: homescreen(),
    );
  }
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/fblogo.png'),
                    radius: 40,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'FACEBOOK',
                    style: TextStyle(
                        letterSpacing: 2.6,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Center(
                    heightFactor: 2.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.grey,
                        ),
                        Text('  '),
                        Icon(
                          Icons.message,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/instagram.png',
                          width: 18,
                          height: 18,
                          color: Colors.grey[700],
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/whatsapp.png',
                          width: 22,
                          height: 22,
                          color: Colors.grey[700],
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/subtraction.png',
                          width: 22,
                          height: 22,
                          color: Colors.grey[700],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
