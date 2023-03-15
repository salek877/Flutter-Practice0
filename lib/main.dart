import 'package:flutter/material.dart';
import 'package:myapp/pages/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _height,
          width: _width,
          padding: EdgeInsets.all(20.0),
          color: Colors.deepPurple,
          child: Column(
            children: [
              //<=========== Header Section Starts
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 32.0,
                    ),
                    CircleAvatar(
                      radius: 26.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/l.png'),
                    ),
                  ],
                ),
              ),
              //<=========== Header Section Ends

              SizedBox(
                height: 20.0,
                width: 10.0,
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Hi, Ghulam',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(
                height: 5,
                width: 10,
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '6 Tasks are pending',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),

              SizedBox(
                height: 15,
                width: 10,
              ),

              Card(
                elevation: 15.0,
                color: Colors.deepPurple[300],
                child: Container(
                  width: _width,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile App Design',
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                      Text(
                        'Light and Ryuk',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/light.png'),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/Ryuk.png'),
                                  ),
                                ]),
                            Icon(
                              Icons.ac_unit,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Monthly Review',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.reviews,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 15.0,
                color: Colors.deepPurple[300],
                child: Container(
                  height: _width / 3,
                  width: _width / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '22',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0),
                      ),
                      Text(
                        'Score',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
