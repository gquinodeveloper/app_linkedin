import 'package:app_linkedin/models/history_model.dart';
import 'package:app_linkedin/ui/views/home/widgets/header_appbar.dart';
import 'package:app_linkedin/ui/views/home/widgets/histories.dart';
import 'package:app_linkedin/ui/views/home/widgets/post.dart';
import 'package:flutter/material.dart';

class HomeView  extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HeaderAppBar(),
      body: ListView(
        children: const [
          Histories(),
          Post(),
        ],
      ),
    );
  }
}
