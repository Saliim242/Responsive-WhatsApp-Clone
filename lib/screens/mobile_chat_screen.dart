import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/components/my_messages.dart';

import '../components/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  final String chatName;
  final String chatIamge;
  final String? message;
  final String? date;
  const MobileChatScreen(
      {super.key,
      required this.chatName,
      required this.chatIamge,
      this.message,
      this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: appBarColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("$chatIamge"),
              radius: 22,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                "$chatName",
                style: TextStyle(
                  fontSize: 16,
                  color: textColor,
                ),
                overflow: TextOverflow.ellipsis,
                //maxLines: 1,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam_rounded,
              color: Colors.grey.shade400,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Colors.grey.shade400,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgroundImage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ChatList(
                message: message,
                date: date,
              ),
            ),
            SizedBox(height: 12),
            // Container(
            //   padding: EdgeInsets.all(10),
            //   height: MediaQuery.of(context).size.height * 0.07,
            //   decoration: BoxDecoration(
            //     color: mobileChatBoxColor,
            //     border: Border(
            //       top: BorderSide(
            //         color: Colors.grey.shade700,
            //         width: 1,
            //       ),
            //     ),
            //   ),
            // )
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    // width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height * 0.05,
                    margin: EdgeInsets.only(left: 8, bottom: 8),
                    decoration: BoxDecoration(
                      color: Color(0xff2A3942),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      cursorColor: textColor,
                      onTap: () {},
                      //controller: _textEditingController, //widget.controller,
                      style: TextStyle(
                        fontSize: 13,
                        color: textColor,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Color(0xff8696A0),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                        hintText: 'Message',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: textColor,
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.attach_file_rounded,
                                size: 20,
                                color: Color(0xff8696A0),
                              ),
                              Icon(
                                Icons.camera_alt,
                                size: 20,
                                color: Color(0xff8696A0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //const SizedBox(width: 10),
                IconButton(
                  icon: Icon(
                    Icons.mic,
                    size: 30,
                    color: Color(0xff8696A0),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
