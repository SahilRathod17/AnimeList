import 'package:animelist/Widget.dart';
import 'package:animelist/Screens/animepage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => __homepageState();
}

class __homepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("AnimeList"),
      // ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 32.0, bottom: 30.0),
                    child: Image(
                      image: AssetImage(
                          "lib/assets/images/icons8-naruto-75(-hdpi).png"),
                    ),
                  ),
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: SB(), //no glow when going max-up or max-downs
                      child: ListView(
                        children: [
                          CardWidget(
                            title: "Get Started!!",
                            info:
                                "Hello Weeb! Welcome to AnimeList app, this is tab that you can edit or delete to start tracking your animes.",
                          ),
                          CardWidget(),
                          CardWidget(),
                          CardWidget(),
                          CardWidget(),
                          CardWidget(),
                          CardWidget(),
                          CardWidget(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 20.0,
                right: 0.0,
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
                    decoration: BoxDecoration(),
                    child: Image(
                        image: AssetImage(
                            "lib/assets/images/icons8-add-60(-xhdpi).png")),
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
