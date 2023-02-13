import 'package:flutter/material.dart';
import 'package:whats_app/data/data_dummy.dart';
import 'package:whats_app/global/global.dart';
import 'package:whats_app/models/models.dart';
import 'package:whats_app/widgets/widgets.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  DataDummy data = DataDummy();

  bool isWriting = false;
  TextEditingController message = TextEditingController();
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    isWriting = message.text.isEmpty ? false : true;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black12,
              backgroundImage: NetworkImage("${arguments["url"]}"),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${arguments["name"]}",
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const Text(
                    "last seen today at 4:58 PM",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFEAE2DA),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: data.messages.length,
            itemBuilder: (context, index) {
              return ItemMessageWidget(
                message: data.messages[index],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              height: 60.0,
              width: double.infinity,
              child: Row(children: [
                Expanded(
                  child: TextField(
                    controller: message,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Message",
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.sentiment_satisfied_alt,
                          color: CustomColors.grey,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 14.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          50.0,
                        ),
                        borderSide: BorderSide.none,
                      ),

                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(
                      //     50.0,
                      //   ),
                      //   borderSide: BorderSide.none,
                      // ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.attach_file,
                              color: CustomColors.grey,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_rounded,
                              color: CustomColors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                    left: 2.0,
                  ),
                  child: isWriting
                      ? FloatingActionButton(
                          onPressed: () {
                            data.messages.add(MessageModel(
                              message: message.text,
                              isOther: false,
                              time: "${now.hour}:${now.minute}",
                            ));
                            // message.text = "";
                            message.clear();
                            setState(() {});
                          },
                          child: const Icon(Icons.send),
                        )
                      : FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(Icons.mic_rounded),
                        ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
