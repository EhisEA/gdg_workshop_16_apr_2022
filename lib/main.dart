import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, withou++t quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: Stack(
              children: [Image.asset("assets/main.jpg")],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, bottom: 15, top: 20),
          color: Color(0xffaaa),
          child: Text(
            "Add members to video call",
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          color: Colors.green,
          height: 60,

          // height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.brown,
                          height: 60,
                          width: 60,
                          child: Image.asset("assets/1.png"),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 12,
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.brown,
                          height: 60,
                          width: 60,
                          child: Image.asset("assets/2.jpg"),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 12,
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.brown,
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            "assets/4.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 12,
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.brown,
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            "assets/5.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 12,
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.brown,
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            "assets/6.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 12,
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.brown,
                          height: 60,
                          width: 60,
                          child: Image.asset("assets/1.png"),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 12,
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
