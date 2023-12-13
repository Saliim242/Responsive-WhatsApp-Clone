import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/data.dart';
import 'package:whatsapp_responsive_ui/screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return InkWell(
            hoverColor: appBarColor,
            onTap: () {
              print("Tabted ${info[index]['name']}");

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MobileChatScreen(
                    chatName: info[index]['name'].toString(),
                    chatIamge: info[index]['profilePic'].toString(),
                    message: messages[index]['isMe'].toString(),
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: ListTile(
                title: Text(
                  "${info[index]['name']}",
                  style: TextStyle(
                    fontSize: 17,
                    color: textColor,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    "${info[index]['message']}",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    "${info[index]['profilePic']}",
                  ),
                ),
                trailing: Text(
                  "${info[index]['time']}",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: dividerColor,
          );
        },
      ),
    );
  }
}
