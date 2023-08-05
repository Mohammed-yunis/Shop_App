import 'package:flutter/material.dart';

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),iconSize: 30),
        const Padding(
          padding:  EdgeInsets.only(bottom: 18.0,left: 15),
          child:  CircleAvatar(
            backgroundColor: Color(0xffFF5252),
            radius: 10,
            child: Text(
              '4',
              style: TextStyle(fontSize: 8, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
