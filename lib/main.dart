import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showYellow = true;

  changeYellow() {
    setState(() {
      showYellow = !showYellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: Image.asset(
                  "assets/main.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black,
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    const Text(
                      "Emmanuel Ehis",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "17:23",
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          child: const Icon(Icons.mic, color: Colors.white),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: InkWell(
                              onTap: changeYellow,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    showYellow ? Colors.amber : Colors.red,
                                child: const Icon(Icons.call_end),
                              ),
                            )),
                        CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          child: const Icon(Icons.message, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
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
          // color: Colors.green,
          height: 60,

          // height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Profile(
                image: "assets/1.png",
              ),
              Profile(
                image: "assets/2.jpg",
              ),
              Profile(
                image: "assets/4.jpg",
              ),
              Profile(
                image: "assets/5.jpg",
              ),
              Profile(
                image: "assets/6.jpg",
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class Profile extends StatelessWidget {
  final String image;

  const Profile({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  image,
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
    );
  }
}
