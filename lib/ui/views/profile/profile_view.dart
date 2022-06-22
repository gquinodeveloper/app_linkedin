import 'package:app_linkedin/ui/theme/app_colors.dart';
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
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: 145.0,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40.0,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/474x/72/8d/90/728d90e17375197ea81b9725b167aaa6.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Veronica Garcia",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.kSecondary,
              fontWeight: FontWeight.w800,
              fontSize: 22.0
            ),
          ),
          Text(
            "FRONTEND DEVELOPER",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.kLetter,
              fontSize: 12.0,
            ),
          ),
        ],
      ),



      
      /* body: Stack(
        children: [
          Container(
            key: const Key("1"),
            color: AppColors.kDisabled,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 550.0,
              key: const Key("2"),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight:  Radius.circular(20.0),

                ),
              ),
            ),
          ),
          Positioned(
            top: 145.0,
            left: 150.0,
            child: Container(
                width: 100.0,
                height: 100.0,
                key: const Key("3"),
                color: Colors.red,
              ),
          ),
        ],
      ), */
    );
  }
}
