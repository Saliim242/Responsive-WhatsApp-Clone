import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/data.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.70,
      color: webAppBarColor,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "${info[0]['profilePic']}",
            ),
            radius: 30,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                info[0]['name'].toString(),
                style: TextStyle(
                  fontSize: 17,
                  color: textColor,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              Text(
                "click here for group info",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff697881),
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Tooltip(
                message: 'Get the app for calling',
                textStyle: TextStyle(
                  color: textColor.withOpacity(0.8),
                  fontSize: 13,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade500, width: 1),
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.video_camera_solid,
                    color: Colors.grey,
                  ),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          Tooltip(
            message: 'Serach',
            textStyle: TextStyle(
              color: textColor.withOpacity(0.8),
              fontSize: 13,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 1),
            ),
            child: ReusableIcon(
              icon: Icons.search_rounded,
              onPressed: () {},
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
            child: ReusableIcon(
              icon: Icons.more_vert_rounded,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableIcon extends StatelessWidget {
  final IconData icon;

  final void Function()? onPressed;
  ReusableIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Colors.grey,
      ),
    );
  }
}
