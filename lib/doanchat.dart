import 'package:flutter/material.dart';

import 'dataofmesslist.dart';
import 'drawerpage.dart';
import 'itemlistview.dart';
import 'messlist.dart';

class doanchat extends StatelessWidget {
  const doanchat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: TextField(
              //cursorColor: Colors.amber,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  fillColor: Colors.white24,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Tìm kiếm',
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          Container(
            height: 95,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                itemlistview(
                    image: 'assets/images/us1.png', name: 'Dương Minh Tài'),
                itemlistview(
                    image: 'assets/images/us2.png', name: 'Phạm Nhật Băng'),
                itemlistview(
                    image: 'assets/images/us3.png', name: 'Trần Anh Tú'),
                itemlistview(
                    image: 'assets/images/us4.png', name: 'Nguyễn Văn Hiến'),
                itemlistview(
                    image: 'assets/images/us6.png', name: 'Hà Văn Nguyên'),
                itemlistview(
                    image: 'assets/images/us5.png', name: 'Nguyễn Hữu Thắng'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, position) {
                return messlist(
                  mess: list[position],
                );
              },
              itemCount: 10,
            ),
          )
        ],
      ),
      drawer: Container(
        child: drawerpage(),
        width: 350,
        height: 1000,
      ),
      appBar: AppBar(
        title: Text('Đoạn chat', style: TextStyle(fontSize: 28)),
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
        actions: [
          SizedBox(
            height: 52,
            width: 52,
            child: ElevatedButton(
              child: Icon(
                Icons.photo_camera,
                size: 24,
              ),
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(CircleBorder()),
                backgroundColor: MaterialStatePropertyAll(Colors.white12),
              ),
            ),
          ),
          SizedBox(width: 20),
          SizedBox(
            height: 52,
            width: 52,
            child: ElevatedButton(
              child: Icon(
                Icons.edit,
                size: 24,
              ),
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(CircleBorder()),
                backgroundColor: MaterialStatePropertyAll(Colors.white12),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
