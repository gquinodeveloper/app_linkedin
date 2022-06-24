import 'package:app_linkedin/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Acerca de",
            style: TextStyle(
              color: AppColors.kSecondary,
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            "The analyzer produces this diagnostic when a constructor that is marked as const invokes a constructor from its superclass that isn’t marked as const.",
            style: TextStyle(
              color: AppColors.kSecondary,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          _information(
              icon: Icons.home,
              text: "Vive en",
              textBold: " Zihuatanejo, Guerrero, México."),
          _information(
            icon: Icons.timer_sharp,
            text: "Trabaja en distrito NA",
          ),
          _information(
            icon: Icons.timer_sharp,
            text: "Ver más información de Veronica",
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Educación",
                style: TextStyle(
                  color: AppColors.kSecondary,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Universidad",
                style: TextStyle(
                  color: AppColors.kSecondary,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: AppColors.kSubLetter)),
                child: Image.asset("assets/images/flutter.jpeg"),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Universidad tecnologica de la costa grande de guerrero",
                      style: TextStyle(
                        color: AppColors.kSecondary,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Tecnologia de la información",
                      style: TextStyle(
                        color: AppColors.kPrimary,
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "2018 - 2020",
                      style: TextStyle(
                        color: AppColors.kSubLetter,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _information({
    required IconData icon,
    required String text,
    String? textBold,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Icon(icon, color: AppColors.kSubLetter),
          const SizedBox(width: 10.0),
          RichText(
            text: TextSpan(
              text: text,
              style: TextStyle(
                color: AppColors.kSecondary,
              ),
              children: [
                TextSpan(
                  text: textBold,
                  style: TextStyle(
                    color: AppColors.kSecondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
