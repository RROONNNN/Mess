import 'package:flutter/material.dart';

import 'dataofmesslist.dart';

class messlist extends StatelessWidget {
  final dataofmesslist mess;
  const messlist({super.key, required this.mess});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 15, 5, 0),
      child: Expanded(
          child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              mess.image,
              fit: BoxFit.cover,
              height: 60,
              width: 60,
            ),
          ),
          SizedBox(
            width: 22,
          ),
          Container(
            width: 280,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(mess.name, style: TextStyle(color: Colors.white60)),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(mess.mess, style: TextStyle(color: Colors.white60)),
                    SizedBox(width: 20),
                    Text(mess.time, style: TextStyle(color: Colors.white60))
                  ],
                )
              ],
            ),
          ),
          mess.seen
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    mess.image,
                    fit: BoxFit.cover,
                    height: 15,
                  ),
                )
              : (mess.func != null)
                  ? Icon(mess.func, size: 20, color: Colors.white24)
                  : Text(''),
        ],
      )),
    );
  }
}
