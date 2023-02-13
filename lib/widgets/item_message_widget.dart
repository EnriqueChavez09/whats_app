import 'package:flutter/material.dart';
import 'package:whats_app/global/global.dart';
import 'package:whats_app/models/message_model.dart';

class ItemMessageWidget extends StatelessWidget {
  MessageModel message;
  ItemMessageWidget({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    double topLeft = this.message.isOther ? 0 : 10.0;
    double topRight = this.message.isOther ? 10.0 : 0;
    return Align(
      alignment:
          this.message.isOther ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
          margin: const EdgeInsets.all(6.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
              color: this.message.isOther ? Colors.white : CustomColors.grey200,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
                topLeft: Radius.circular(topLeft),
                topRight: Radius.circular(topRight),
              )),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(this.message.message),
                  const SizedBox(
                    width: 35.0,
                  ),
                ],
              ),
              Positioned(
                right: 0,
                bottom: -5,
                child: Row(
                  children: [
                    Text(
                      this.message.time,
                      style: const TextStyle(
                        fontSize: 8.0,
                        color: Colors.black45,
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Icon(
                          Icons.check,
                          size: 13.0,
                          color: Colors.black45,
                        ),
                        Positioned(
                          right: -5,
                          child: Icon(
                            Icons.check,
                            size: 13.0,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
