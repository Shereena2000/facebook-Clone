import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/widget/CircularButton.dart';
import 'package:facebook/widget/headerButon.dart';
import 'package:facebook/widget/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            circularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print('go to search');
                }),
            circularButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print('message apper');
                })
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(headerButtonOne:  headerButton(
              buttonIcon: Icons.video_call,
              buttonColor: Colors.red,
              buttonText: "Live",
              buttonAction: () {
                print('go to live');
              }),headerButtonTwo: headerButton(
              buttonIcon: Icons.photo_library,
              buttonColor: Colors.green,
              buttonText: "Phots",
              buttonAction: () {
                print('add photo');
              }),headerButtonThree: headerButton(
              buttonIcon: Icons.video_call,
              buttonColor: Colors.purple,
              buttonText: "Room",
              buttonAction: () {
                print('go to live');
              }),),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avathar: shereena,
              name: "shereena",
              publishAt: "5h",
              postTitle: " ",
              postImage: post2,
              showBlueTick: true,likeCount: "12k",
              commentcount: "1.5k",shareCount: "540",
            ),  thickDivider, PostCard(
              avathar: shereenaBinu,
              name: "shereena",
              publishAt: "7h",
              postTitle: "Promise",
              postImage: post10,
              showBlueTick: false,likeCount: "15k",
              commentcount: "5k",shareCount: "550",
            ),  thickDivider,
             PostCard(
              avathar: sheri,
              name: "shereena",
              publishAt: "3h",
              postTitle: "Our Big Day",
              postImage: post4 ,
              showBlueTick: true,likeCount: "10k",
              commentcount: "1k",shareCount: "500",
            ),  thickDivider,
            PostCard(
              avathar: binu,
              name: "Binu",
              publishAt: "2h",
              postTitle: "Fam",
              postImage: post9 ,
              showBlueTick: true,likeCount: "10k",
              commentcount: "1k",shareCount: "250",
            ),  thickDivider,
            PostCard(
              avathar: binuJames,
              name: "Binu James",
              publishAt: "1h",
              postTitle: "Our Big Day",
              postImage: post5 ,
              showBlueTick: true,likeCount: "12k",
              commentcount: "3k",shareCount: "500",
            ),  thickDivider,
              
              PostCard(
              avathar: shereena,
              name: "shereena",
              publishAt: "5h",
              postTitle: " ",
              postImage: post7,
              showBlueTick: true,likeCount: "12k",
              commentcount: "1.5k",shareCount: "540",
            ),  thickDivider, 
              PostCard(
              avathar: shereena,
              name: "sheri",
              publishAt: "5h",
              postTitle: " ",
              postImage: post3,
              showBlueTick: false,likeCount: "12k",
              commentcount: "1.5k",shareCount: "540",
            ),  thickDivider, 
              PostCard(
              avathar: shereena,
              name: "sheree",
              publishAt: "5h",
              postTitle: " ",
              postImage: post1,
              showBlueTick: true,likeCount: "12k",
              commentcount: "1.5k",shareCount: "540",
            ),  thickDivider, 
              PostCard(
              avathar: shereena,
              name: "reena",
              publishAt: "5h",
              postTitle: " ",
              postImage: post6,
              showBlueTick: true,likeCount: "12k",
              commentcount: "1.5k",shareCount: "540",
            ),  thickDivider, 
              PostCard(
              avathar: binu,
              name: "cherrish",
              publishAt: "2h",
              postTitle: "  ",
              postImage: post8,
              showBlueTick: false,likeCount: "12k",
              commentcount: "1.5k",shareCount: "540",
            ),  thickDivider, 
             
          ],
        ),
      ),
    );
  }
}
