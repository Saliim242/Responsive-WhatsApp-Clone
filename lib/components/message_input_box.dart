import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';

class MessageInputBox extends StatefulWidget {
  final void Function()? onTap;
  final TextEditingController controller;
  MessageInputBox({super.key, this.onTap, required this.controller});

  @override
  State<MessageInputBox> createState() => _MessageInputBoxState();
}

class _MessageInputBoxState extends State<MessageInputBox> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_checkText);
  }

  void _checkText() {
    setState(() {
      hasText = _textEditingController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  bool hasText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      //width: MediaQuery.of(context).size.width * 0.70,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
        color: chatBarMessages,
      ),

      child: Row(
        children: [
          Tooltip(
            message: 'Attach',
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
                Icons.add,
                size: 30,
                color: Color(0xff697881),
              ),
            ),
          ),
          //const SizedBox(width: 10),
          Expanded(
            child: Container(
              //width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.height * 0.06,

              decoration: BoxDecoration(
                color: Color(0xff2A3942),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                cursorColor: textColor,
                onTap: widget.onTap,
                controller: _textEditingController, //widget.controller,
                style: TextStyle(
                  fontSize: 13,
                  color: textColor,
                ),
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Color(0xff697881),
                    ),
                  ),
                  contentPadding: EdgeInsets.all(15.8),
                  border: InputBorder.none,
                  hintText: 'Type message here',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xff8696A0),
                  ),
                ),
              ),
            ),
          ),
          //const SizedBox(width: 10),
          IconButton(
            icon: hasText
                ? Icon(
                    Icons.send,
                    size: 30,
                    color: Color(0xff8696A0),
                  )
                : Icon(
                    Icons.mic,
                    size: 30,
                    color: Color(0xff8696A0),
                  ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
