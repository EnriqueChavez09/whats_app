import 'package:flutter/material.dart';
import 'package:whats_app/data/data_dummy.dart';
import 'package:whats_app/global/global.dart';
import 'package:whats_app/widgets/widgets.dart';

class StatusPage extends StatelessWidget {
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
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/profile.jfif",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            bottom: 0,
                            right: -5,
                            child: Container(
                              decoration: BoxDecoration(
                                color: CustomColors.green,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: CustomColors.white,
                                  width: 2.5,
                                ),
                              ),
                              child: Icon(
                                Icons.add,
                                color: CustomColors.white,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "My status",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "Tap to add status update",
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
                  "Recent updates",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                ...List.generate(
                  data.status.length,
                  (index) => ItemStatuWidget(
                    statu: data.status[index],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 80,
          right: 10,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.mic,
            ),
            mini: true,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.camera_alt,
            ),
          ),
        )
      ],
    );
  }
}
