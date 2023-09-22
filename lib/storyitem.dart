import 'package:flutter/material.dart';

class storyitem extends StatelessWidget {
  final String image;
  final String name;
  final String number;
  final String story;
  const storyitem(
      {super.key,
      required this.image,
      required this.name,
      required this.number,
      required this.story});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            story,
            fit: BoxFit.cover,
            width: double.maxFinite,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      Positioned(
        left: 20,
        top: 20,
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(image, fit: BoxFit.cover)),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(
                width: 3, color: Colors.blue, style: BorderStyle.solid),
          ),
        ),
        height: 45,
        width: 45,
      ),
      Positioned(
        child: Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
        bottom: 15,
        left: 15,
      ),
      Positioned(
        child: Container(
          padding: EdgeInsets.all(2),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.black45),
          height: 20,
          width: 20,
          child: Text(
            number,
            textAlign: TextAlign.center,
          ),
        ),
        top: 15,
        right: 15,
      )
    ]);
  }
}
