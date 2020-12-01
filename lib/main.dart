import 'package:flutter/material.dart';
import 'search.dart';
import 'create_post.dart';
import 'notification.dart';
import 'profile.dart';
import 'homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shaders',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [
    Homepage(),
    SearchPage(),
    CreatePostPage(),
    Notifications(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Rainbow Shades',
              style: GoogleFonts.getFont('Caveat'),
            ),
          ),
          // flexibleSpace: Container(
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //           begin: Alignment.topLeft,
          //           end: Alignment.topRight,
          //           colors: <Color>[
          //         Colors.black87,
          //         Colors.white,
          //       ])),
          // ),
        ),
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: new TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
              Tab(
                icon: Icon(Icons.add),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
              ),
            ],
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.white,
            labelStyle: new TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
