import 'package:app_linkedin/models/post_model.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Gustavo Quino",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "FRONTEND DEVELOPER",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  const CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: Icon(
                      Icons.more_vert_rounded,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Text(
                posts[index].description,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.0,
                ),
              ),
              Container(
                width: double.infinity,
                height: 250.0,
                margin: EdgeInsets.symmetric(vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
