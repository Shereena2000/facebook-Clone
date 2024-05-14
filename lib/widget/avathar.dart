import 'package:flutter/material.dart';

class Avathar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double height;
  final double width;
  Avathar(
      {required this.displayImage,
      required this.displayStatus,
      this.displayBorder = false,this.width = 50,this.height = 50});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: displayBorder
                  ? Border.all(
                      width: 3,
                      color: Colors.blueAccent,
                    )
                  : Border()),
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: width,
              height: height,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.greenAccent,
                      border: Border.all(width: 2, color: Colors.white)),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
