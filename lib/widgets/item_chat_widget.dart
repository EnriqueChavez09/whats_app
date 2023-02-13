import 'package:flutter/material.dart';
import 'package:whats_app/global/global.dart';
import 'package:whats_app/models/models.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel user;
  ItemChatWidget({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    bool isCountMessage = user.countMessage > 0;
    user.setMessage();
    return ListTile(
      onTap: () {
        Navigator.restorablePushNamed(context, "chatDetail",
            arguments: {"name": user.nameContact, "url": user.url});
      },
      leading: CircleAvatar(
        backgroundColor: Colors.black12,
        backgroundImage: NetworkImage(this.user.url),
      ),
      title: Text(
        this.user.nameContact,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        this.user.message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: user.isTyping ? CustomColors.green100 : CustomColors.black54,
        ),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            this.user.date,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: CustomColors.black54,
              fontSize: 13.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4.0,
            ),
            height: 20.0,
            width: 20.0,
            decoration: BoxDecoration(
              color:
                  isCountMessage ? CustomColors.green100 : CustomColors.white,
              // borderRadius: BorderRadius.circular(50)
              shape: BoxShape.circle,
            ),
            child: Text(
              "${user.countMessage}",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: CustomColors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
