import 'package:flutter/material.dart';
import 'package:whats_app/data/data_dummy.dart';
import 'package:whats_app/global/global.dart';
import 'package:whats_app/widgets/item_statu_widget.dart';
import 'package:whats_app/widgets/widgets.dart';

class CallPage extends StatelessWidget {
  DataDummy data = DataDummy();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.green,
                      ),
                      child: IconButton(
                        color: CustomColors.white,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Create call link",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "Share a link for your WhatsApp call",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Recent",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                ...List.generate(
                  data.calls.length,
                  (index) => ItemCallWidget(
                    call: data.calls[index],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add_ic_call_rounded,
            ),
          ),
        )
      ],
    );
  }
}
