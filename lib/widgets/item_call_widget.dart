import 'package:whats_app/global/global.dart';
import 'package:whats_app/models/call_model.dart';
import 'package:flutter/material.dart';

class ItemCallWidget extends StatelessWidget {
  CallModel call;
  ItemCallWidget({
    required this.call,
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
                  call.url,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  call.nameContact,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      call.isIncomming ? Icons.call_made : Icons.call_received,
                      size: 13.0,
                      color:
                          call.isIncomming ? CustomColors.green100 : Colors.red,
                    ),
                    Text(
                      "Today, ${call.time} PM",
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(
            call.isCalled ? Icons.call : Icons.video_call,
            size: 25.0,
            color: CustomColors.green100,
          ),
        ],
      ),
    );
  }
}
