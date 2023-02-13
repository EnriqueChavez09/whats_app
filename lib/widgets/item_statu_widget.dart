import 'package:flutter/material.dart';
import 'package:whats_app/global/global.dart';
import 'package:whats_app/models/models.dart';

class ItemStatuWidget extends StatelessWidget {
  StatuModel statu;
  ItemStatuWidget({
    required this.statu,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  statu.url,
                ),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: CustomColors.green,
                width: 3.5,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                statu.nameContact,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
              Text(
                "Today, ${statu.time} PM",
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
