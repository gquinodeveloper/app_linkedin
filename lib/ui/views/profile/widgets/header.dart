import 'package:app_linkedin/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  borderRadius: BorderRadius.circular(20.0),
                  image:const  DecorationImage(
                    image: AssetImage("assets/images/flutter.jpeg"),
                    fit: BoxFit.cover
                  )
                ),
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
              fontSize: 22.0),
        ),
        const SizedBox(height: 5.0),
        Text(
          "FRONTEND DEVELOPER",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.kLetter,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
