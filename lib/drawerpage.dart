import 'package:flutter/material.dart';
import 'package:messenger/listitemindrawer.dart';

class drawerpage extends StatelessWidget {
  const drawerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff242526),
        drawerEdgeDragWidth: 30,
        appBar: AppBar(
          backgroundColor: Color(0xff242526),
          elevation: 0,
          title: Text(
            'Nguyễn Minh Thuận',
          ),
          actions: [
            Icon(
              Icons.expand_more,
              size: 35,
            ),
            SizedBox(
              width: 30,
            ),
            Icon(
              Icons.settings,
              size: 30,
            ),
            SizedBox(
              width: 10,
            )
          ],
          toolbarHeight: 75,
          leadingWidth: 75,
          leading: Container(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                'assets/images/us10.png',
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            listitemindrawer(
              icon: Icons.chat_bubble,
              name: 'Đoạn chat',
              number: '3',
              selected: true,
            ),
            listitemindrawer(
                icon: Icons.store, name: 'Marketplace', selected: false),
            listitemindrawer(
                icon: Icons.sms,
                name: 'Tin nhắn đang chờ',
                selected: false,
                number: '4'),
            listitemindrawer(
                icon: Icons.inventory, name: 'Kho lưu trữ', selected: false),
          ],
        ));
  }
}
