import 'package:animelist/Widget.dart';
import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {
  @override
  State<AnimePage> createState() => AnimePageState();
}

class AnimePageState extends State<AnimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 12, top: 24),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Image(
                              image: AssetImage(
                                  'lib/assets/images/icons8-back-arrow-48.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Anime Name",
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF211551),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Description about the anime",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                        )),
                  ),
                  trackwidget(
                    text: "Enter your favourite Anime",
                    isDone: true,
                  ),
                  trackwidget(
                    text: "Enter your favourite character's name",
                    isDone: false,
                  ),
                  trackwidget(
                    isDone: true,
                  ),
                  trackwidget(
                    isDone: true,
                  ),
                ],
              ),
              Positioned(
                bottom: 25.0,
                right: 25.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => AnimePage())),
                    );
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        //color: Color(0xFF7449FE),
                        ),
                    child: Image(
                        image: AssetImage(
                            "lib/assets/images/icons8-remove-48.png")),
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
