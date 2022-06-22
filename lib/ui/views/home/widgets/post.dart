import 'package:app_linkedin/models/post_model.dart';
import 'package:app_linkedin/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return const Divider(
          indent: 20.0,
          endIndent: 20.0,
        );
      },
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post.avatar ?? ""),
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.name,
                        style: TextStyle(
                          color: AppColors.kSecondary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        post.profile,
                        style: TextStyle(
                          color: AppColors.kSubLetter,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: AppColors.kDefault,
                    child: Icon(
                      Icons.more_vert_rounded,
                      color: AppColors.kDisabled,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Text(
                post.description,
                style: TextStyle(
                    color: AppColors.kSecondary,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                width: double.infinity,
                height: 250.0,
                margin: const EdgeInsets.symmetric(vertical: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(post.photo ?? ""),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _action(icon: Icons.share, text: "Recomendar"),
                  _action(icon: Icons.phone, text: "Recomendar"),
                  _action(icon: Icons.phone, text: "Recomendar"),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _action({
    required IconData icon,
    required String text,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.kDisabled,
          size: 20.0,
        ),
        const SizedBox(width: 5.0),
        Text(
          text,
          style: TextStyle(
              fontSize: 13.0,
              color: AppColors.kDisabled,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
