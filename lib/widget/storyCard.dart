import 'package:facebook/widget/CircularButton.dart';
import 'package:facebook/widget/avathar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avathar;
  final bool ctreateStoryStatus;
  final bool displayBorder;
  const StoryCard(
      {required this.labelText,
      required this.story,
      required this.avathar,
      this.ctreateStoryStatus = false,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: ctreateStoryStatus
                ? circularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      print(' create story');
                    },
                  )
                : Avathar(
                    displayImage: avathar,
                    displayStatus: false,
                    displayBorder: displayBorder,
                    width: 35,
                    height: 35,
                  ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labelText != null ? labelText : " null value",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
