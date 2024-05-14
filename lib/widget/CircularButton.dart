import 'package:flutter/material.dart';

class circularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor ;
  circularButton({required this.buttonIcon, required this.buttonAction,this.iconColor=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
      child: IconButton(
        icon: Icon(buttonIcon,color:iconColor ,),
        onPressed: buttonAction,
      ),
    );
  }
}
