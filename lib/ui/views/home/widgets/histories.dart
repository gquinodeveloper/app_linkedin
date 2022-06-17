import 'package:app_linkedin/models/history_model.dart';
import 'package:flutter/material.dart';

class Histories extends StatelessWidget {
  const Histories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      margin: const EdgeInsets.symmetric(vertical: 25.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: histories.length,
        itemBuilder: (context, index) {
          if (histories[index].id == 0) {
            return Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 35.0,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Historia ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    histories[index].name,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
