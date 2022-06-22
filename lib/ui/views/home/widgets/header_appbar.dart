import 'package:app_linkedin/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leadingWidth: 70.0,
      leading: Container(
        margin: const EdgeInsets.only(left: 15.0),
        child: const CircleAvatar(
          backgroundImage: NetworkImage("https://i.pinimg.com/474x/72/8d/90/728d90e17375197ea81b9725b167aaa6.jpg"),
        ),
      ),
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(
            "Veronica Garcia",
            style: TextStyle(
              color: AppColors.kSecondary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "FRONTEND DEVELOPER",
            style: TextStyle(
              color: AppColors.kLetter,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: () {
            print("Click search");
          },
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.search,
              color: Colors.black38,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("Click comentarios");
          },
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.chat_bubble_outline_rounded,
              color: Colors.black38,
            ),
          ),
        ),
        const SizedBox(width: 15.0),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
