import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  TextStyle tileListFont() {
    return TextStyle(fontSize: 25, fontFamily: "Montserrat");
  }

  TextStyle titleFont() {
    return TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      fontFamily: "PermanentMarker",
      color: Colors.white,
    );
  }

  TextStyle subtitleFont() {
    return TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w400,
    );
  }

  Card infoCard(IconData icon, String title) {
    return Card(
      shadowColor: Colors.black,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: ListTile(
        tileColor: Colors.white60,
        leading: Icon(icon, size: 30, color: Colors.blueGrey),
        title: Text(
          title,
          style: tileListFont(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[300],
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // @Photo by Caitie Philpott on Unsplash
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1473081556163-2a17de81fc97?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1887&q=80"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 200,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 190,
                      foregroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1596543570665-a34c7aeb1da1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80"),
                    ),
                  ),
                  SizedBox(height: 30),
                  //Text("©Photo by Laura Barry, published on August 4, 2020"),
                  Text(
                    "Barnie Oats",
                    style: titleFont(),
                  ),
                  Text(
                    "Quokka",
                    style: subtitleFont(),
                  ),
                  SizedBox(height: 20),
                  infoCard(
                      Icons.local_post_office_rounded, "barnie_oats@gmail.com"),
                  infoCard(Icons.phone, "+447448112512"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
