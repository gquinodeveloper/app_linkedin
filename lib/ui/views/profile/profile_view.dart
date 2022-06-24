import 'package:app_linkedin/ui/views/profile/widgets/follower.dart';
import 'package:app_linkedin/ui/views/profile/widgets/header.dart';
import 'package:app_linkedin/ui/views/profile/widgets/my_actions.dart';
import 'package:app_linkedin/ui/views/profile/widgets/tabs.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      //body: Tabs(),
      body: Column(
        children:  const [
          Header(),
          Follower(),
          MyActions(),
          Expanded(
            child: Tabs(),
          ),
        ],
      ),
    );
  }
}
