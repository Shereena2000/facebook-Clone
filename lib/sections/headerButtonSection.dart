
import 'package:flutter/material.dart';


class HeaderButtonSection extends StatelessWidget {
  final Widget headerButtonOne;
   final Widget headerButtonTwo;
    final Widget headerButtonThree;
  const HeaderButtonSection({super.key, required this.headerButtonOne, required this.headerButtonTwo, required this.headerButtonThree});

 

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider =  VerticalDivider(thickness: 1, color: Colors.grey[300]);
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         headerButtonOne,
          verticalDivider,
         headerButtonTwo,
           verticalDivider,
          headerButtonThree
        ],
      ),
    );
  }
}
