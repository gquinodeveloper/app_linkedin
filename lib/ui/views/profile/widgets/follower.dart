import 'package:app_linkedin/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Follower extends StatelessWidget {
  const Follower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          SizedBox(
            width: 85.0,
            height: 60.0,
            child: Stack(
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 22.0,
                      backgroundImage: AssetImage("assets/images/mau.jpg"),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 22.0,
                      backgroundImage: AssetImage("assets/images/flutter.jpeg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5.0),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: '3 contactos en comun: ',
                style: TextStyle(
                  color: AppColors.kSecondary,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Ricardo Pinovery, Efrain Granados y 1 persona más',
                    style: TextStyle(
                        color: AppColors.kLetter, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
