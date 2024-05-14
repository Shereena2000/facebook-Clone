import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widget/avathar.dart';
import 'package:facebook/widget/blueTick.dart';
import 'package:facebook/widget/headerButon.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avathar;
  final String name;
  final String publishAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentcount;
  const PostCard(
      {super.key,
      required this.avathar,
      required this.name,
      required this.publishAt,
      required this.postTitle,
      required this.postImage,
      this.showBlueTick = false,
      required this.likeCount,
      required this.shareCount,
      required this.commentcount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeaderSection(),
          titleSection(),
          imageSection(),
          footerSection(),
          HeaderButtonSection(
            headerButtonOne: headerButton(
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonColor: Colors.grey,
                buttonText: "Like",
                buttonAction: () {
                  print("like");
                }),
            headerButtonTwo: headerButton(
                buttonIcon: Icons.message_outlined,
                buttonColor: Colors.grey,
                buttonText: "Comment",
                buttonAction: () {
                  print("comment");
                }),
            headerButtonThree: headerButton(
                buttonIcon: Icons.share_outlined,
                buttonColor: Colors.grey,
                buttonText: "Share",
                buttonAction: () {
                  print("comment");
                }),
          )
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(
                  label: commentcount,
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Shares"),
                SizedBox(
                  width: 10,
                ),
                Avathar(
                  displayImage: shereenaBinu,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                    onPressed: () {
                      print("......");
                    },
                    icon: Icon(Icons.arrow_drop_down))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget imageSection() => Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Image.asset(postImage),
      );

  Widget titleSection() => postTitle != null && postTitle != ""
      ? Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            postTitle,
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          ))
      : SizedBox();

  Widget postCardHeaderSection() {
    return ListTile(
      leading: Avathar(displayImage: avathar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            publishAt == null ? "" : publishAt,
            style: TextStyle(color: Colors.grey[700]),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.public, size: 15, color: Colors.grey[700])
        ],
      ),
      trailing: Icon(Icons.more_horiz, color: Colors.grey[700]),
    );
  }
}
