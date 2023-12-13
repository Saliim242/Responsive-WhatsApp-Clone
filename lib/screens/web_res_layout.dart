import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/components/chat_list.dart';
import 'package:whatsapp_responsive_ui/components/reusable_contacts_list.dart';
import 'package:whatsapp_responsive_ui/components/web_search.dart';

import '../components/message_input_box.dart';
import '../components/web_appbar.dart';
import '../components/web_chat_appbar.dart';

class WebResponsiveLayout extends StatelessWidget {
  const WebResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Web User Profile
                  WebAppBar(),
                  // Web Appbar Search
                  WebSerarchBar(),

                  ContactsList(),
                  //Text("Hello"),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                WebChatAppBar(),
                SizedBox(height: 20),
                Expanded(
                  child: ChatList(),
                ),
                SizedBox(height: 10),
                MessageInputBox(
                  controller: TextEditingController(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
