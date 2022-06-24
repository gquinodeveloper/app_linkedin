import 'package:app_linkedin/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyActions extends StatelessWidget {
  const MyActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        //vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              print("Click Conectar");
            },
            child: Container(
              width: 120.0,
              height: 40.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.kPrimary,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Text(
                "Conectar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Click Conectar");
            },
            child: Container(
              width: 160.0,
              height: 40.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: AppColors.kPrimary),
              ),
              child: Text(
                "Enviar mensaje",
                style: TextStyle(
                  color: AppColors.kPrimary,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: AppColors.kDefault,
            child: Icon(
              Icons.more_vert_rounded,
              color: AppColors.kDisabled,
            ),
          ),
        ],
      ),
    );
  }
}
