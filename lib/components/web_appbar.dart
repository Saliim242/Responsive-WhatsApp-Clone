import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.30,
      decoration: BoxDecoration(
        color: webAppBarColor, //Color(0xff202c33),
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/86506519?v=4"),
          ),
          Spacer(),
          Tooltip(
            message: 'Communities',
            textStyle: TextStyle(
              color: textColor.withOpacity(0.8),
              fontSize: 13,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 1),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.groups_2,
                color: Color(0xff8696A0),
              ),
            ),
          ),
          Tooltip(
            message: 'New Chat',
            textStyle: TextStyle(
              color: textColor.withOpacity(0.8),
              fontSize: 13,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 1),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_rounded,
                color: Color(0xff8696A0),
              ),
            ),
          ),
          Tooltip(
            message: 'More',
            textStyle: TextStyle(
              color: textColor.withOpacity(0.8),
              fontSize: 13,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 1),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_rounded,
                color: Color(0xff8696A0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
