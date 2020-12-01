import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'hompage/inteactivebar.dart';
import 'package:shader/hompage/post.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: <Color>[
            Color(0xff282641),
            Color(0xff161426),
          ],
        ),
      ),
      child: ListView(
          children: <Widget>[
            Column(
              children: getPosts(),
            )
          ],
        ));
  }

  List<Widget> getPosts() {
    List<Widget> posts = [];
    for(Post post in userPosts){
      posts.add(getPosts(post))
    }
    return posts;
  }
Widget getPost(Post post){



}



 ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          margin: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                color: Color(0xff272A4C),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(
                          'https://pyxis.nymag.com/v1/imgs/e77/f86/c097ab5b7adf3ba4f84ccf013693ab6a48-kendall-jenner.rvertical.w1200.jpg',
                        ),
                      ),
                    ),
                    Text(
                      'Suraksh N.S',
                      style: GoogleFonts.getFont('Caveat',
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
              Intractivebar(),
              Container(
                color: Color(0xff272A4C),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.favorite),
                          Text('518 Likes')
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.messenger),
                          Text('112 Comments')
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  
}
