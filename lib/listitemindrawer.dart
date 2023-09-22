import 'package:flutter/material.dart';

class listitemindrawer extends StatelessWidget {
  final IconData icon;
  final String name;
  final String? number;
  final bool selected;
  const listitemindrawer(
      {super.key,
      required this.icon,
      required this.name,
      this.number,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        padding: EdgeInsets.all(12),
        width: double.maxFinite,
        decoration: selected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white24)
            : BoxDecoration(),
        child: Container(
          width: double.maxFinite,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Container(
                child: Icon(icon, size: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white38),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 20),
              ),
            ]),
            (number != null)
                ? Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.blue),
                    child: Text(
                      number!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    height: 20,
                    width: 20,
                  )
                : Text(''),
          ]),
        ),
      ),
    );
  }
}
