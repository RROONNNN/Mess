import 'package:flutter/material.dart';

class itemlistview extends StatelessWidget {
  final String image;
  final String name;
  const itemlistview(
      {super.key, required String this.image, required String this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 60,
            ),
          ),
          Text(
            name,
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
