import 'package:flutter/material.dart';

import 'storyitem.dart';

class storypage extends StatelessWidget {
  const storypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text(
          'Tin',
          style: TextStyle(fontSize: 30),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
        leadingWidth: 85,
        leading: SizedBox(
            height: 45,
            width: 50,
            child: Builder(
              builder: (context) => ElevatedButton(
                child: Icon(
                  Icons.menu,
                  size: 25,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(CircleBorder()),
                  backgroundColor: MaterialStatePropertyAll(Colors.white12),
                ),
              ),
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 0.85),
          children: [
            storyitem(
                image: 'assets/images/us10.png',
                name: 'Nguyễn Minh Thuận',
                number: '2',
                story: 'assets/images/admin.png'),
            storyitem(
                image: 'assets/images/us1.png',
                name: 'Dương Minh Tài',
                number: '',
                story: 'assets/images/tin1tai.png'),
            storyitem(
                image: 'assets/images/us2.png',
                name: 'Phạm Nhật Băng',
                number: '3',
                story: 'assets/images/tin2bang.png'),
            storyitem(
                image: 'assets/images/us10.png',
                name: 'Nguyễn Minh Thuận',
                number: '',
                story: 'assets/images/tin3ron.png'),
            storyitem(
                image: 'assets/images/us5.png',
                name: 'Nguyễn Hữu Thắng',
                number: '2',
                story: 'assets/images/tin4thang.png'),
            storyitem(
                image: 'assets/images/us10.png',
                name: 'Nguyễn Minh Thuận',
                number: '',
                story: 'assets/images/ronnnnn.png'),
          ],
        ),
      ),
    );
  }
}
