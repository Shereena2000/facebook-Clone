import 'package:facebook/assets.dart';
import 'package:facebook/widget/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {

  const StorySection({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'add to story',
            story: shereena,
            avathar: shereena,
            ctreateStoryStatus: true,
            displayBorder: true,
          ),
           StoryCard(
            labelText: 'Shereena',
            story: post8,
            avathar: sheri,
            displayBorder: true,
          //  ctreateStoryStatus: false, 
          
          ),StoryCard(
            labelText: 'Binu',
            story: post5,
            avathar: binuJames,
            displayBorder: true,
          //  ctreateStoryStatus: false, 
          ),StoryCard(
            labelText: 'Shereena Binu',
            story: post3,
            avathar: shereenaBinu,
            displayBorder: true,
          //  ctreateStoryStatus: false, 
          ),
        ],
      ),
    );
  }
}
