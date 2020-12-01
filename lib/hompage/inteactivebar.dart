import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intractivebar extends StatefulWidget {
  @override
  _IntractivebarState createState() => _IntractivebarState();
}

class _IntractivebarState extends State<Intractivebar> {
  Widget likeicon = Icon(Icons.favorite_border_outlined);
  int likecount = 0;
  int likecoun = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onDoubleTap: () {
            setState(
              () {
                likecount++;
                if (likecount == 1) {
                  likeicon = Icon(
                    Icons.favorite,
                    color: Colors.red,
                  );
                  likecount = likecount - 2;
                } else {
                  likeicon = Icon(Icons.favorite_border_outlined);
                }
              },
            );
          },
          child: Container(
            child: Center(
              child: Image.network(
                  'https://media3.s-nbcnews.com/j/newscms/2019_41/3047866/191010-japan-stalker-mc-1121_06b4c20bbf96a51dc8663f334404a899.fit-760w.JPG'),
            ),
            color: Colors.red,
          ),
        ),
        Container(
          color: Color(0xff272A4C),
          height: 40,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          likecoun++;
                          if (likecoun == 1) {
                            likeicon = Icon(
                              Icons.favorite,
                              color: Colors.red,
                            );
                            likecoun = likecoun - 2;
                          } else {
                            likeicon = Icon(Icons.favorite_border_outlined);
                          }
                        });
                      },
                      child: likeicon)),
              Expanded(
                  child: FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ))),
              Expanded(
                  child: FlatButton(onPressed: () {}, child: Icon(Icons.send))),
              Expanded(
                  child: FlatButton(
                      onPressed: () {}, child: Icon(Icons.save_alt))),
              Expanded(
                  child: FlatButton(
                      onPressed: () {}, child: Icon(Icons.shopping_bag))),
            ],
          ),
        ),
      ],
    );
  }
}
