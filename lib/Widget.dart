import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String? title;
  final String? info;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  CardWidget({this.title, this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        margin: EdgeInsets.only(
          bottom: 20.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "(Unnamed Anime)",
              style: TextStyle(
                color: Color(0xFF211551),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                info ?? "No Information Added.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF86829D),
                  height: 1.4,
                ),
              ),
            )
          ],
        ));
  }
}
