import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';

class WebSerarchBar extends StatefulWidget {
  final void Function()? onTap;
  const WebSerarchBar({super.key, this.onTap});

  @override
  State<WebSerarchBar> createState() => _WebSerarchBarState();
}

class _WebSerarchBarState extends State<WebSerarchBar> {
  FocusNode _focus = FocusNode();

  bool isSelected = false;

  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _focus.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(() {
      setState(() {});
    });
    _focus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              //width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.height * 0.048,

              decoration: BoxDecoration(
                color: Color(0xff202C33),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                cursorColor: textColor,
                focusNode: _focus,
                onTap: widget.onTap,
                controller: _controller,
                style: TextStyle(
                  fontSize: 13,
                  color: textColor,
                ),
                decoration: InputDecoration(
                  prefixIcon: _focus.hasFocus
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              _focus.unfocus();
                            });
                          },
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: tabColor,
                          ),
                        )
                      : Icon(
                          Icons.search_rounded,
                          color: Color(0xff8696A0),
                        ),
                  suffixIcon: _focus.hasFocus
                      ? Icon(
                          CupertinoIcons.multiply,
                          color: Color(0xff8696A0),
                          size: 22,
                        )
                      : SizedBox(),
                  contentPadding: EdgeInsets.all(15.8),
                  border: InputBorder.none,
                  hintText: _focus.hasFocus
                      ? null
                      : isSelected
                          ? 'Search unread chats'
                          : 'Search or start new chat',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xff8696A0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          IconButton(
            isSelected: isSelected,
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            icon: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: isSelected ? tabColor : null,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.filter_list,
                size: 25,
                color: isSelected ? textColor : Color(0xff8696A0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/*
        Container(
          width: MediaQuery.of(context).size.width * 0.30,
          height: MediaQuery.of(context).size.height * 0.06,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: dividerColor,
                width: 1,
              ),
            ),
          ),
          child: Text("hhh"),
        ),
        Expanded(
          child: Text(
            "data",
            style: TextStyle(color: Colors.white),
          ),
        )
*/