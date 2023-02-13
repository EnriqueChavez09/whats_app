import 'package:flutter/material.dart';
import 'package:whats_app/global/global.dart';
import 'package:whats_app/pages/pages.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? myTabController;

  @override
  void initState() {
    super.initState();
    myTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: CustomColors.white,
          indicatorWeight: 3.5,
          controller: myTabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(
                Icons.people,
              ),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: myTabController,
        children: [
          ComunityPage(),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(
      //     Icons.message,
      //   ),
      // ),
    );
  }
}
