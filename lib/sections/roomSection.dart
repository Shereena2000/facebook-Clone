import 'package:facebook/assets.dart';
import 'package:facebook/widget/avathar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avathar(displayImage: binu,displayStatus: true,),
          Avathar(displayImage: binuJames,displayStatus: true,),
          Avathar(displayImage: binu,displayStatus: true,),
          Avathar(displayImage: shereena,displayStatus: true,),
          Avathar(displayImage: binuJames,displayStatus: true,),
          Avathar(displayImage: binu,displayStatus: true,),
          Avathar(displayImage: shereena,displayStatus: true,)
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(width: 2, color: Colors.blue)),
        onPressed: () {
          print('create to rrom');
        },
        icon: Icon(Icons.video_call),
        label: Text(
          "Create \n Room",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
