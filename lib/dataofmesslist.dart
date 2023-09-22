import 'package:flutter/material.dart';

class dataofmesslist {
  final String image;
  final String name;
  final String time;
  final String mess;
  final bool seen;
  final IconData? func;
  const dataofmesslist(
      {required this.image,
      required this.name,
      required this.time,
      required this.mess,
      required this.seen,
      required this.func});
}

List<dataofmesslist> list = [
  dataofmesslist(
      func: Icons.check_circle_outline,
      image: 'assets/images/us10.png',
      time: '7:36',
      name: 'Bạn đã gửi một ảnh',
      seen: false,
      mess: 'Bạn: ảo vc'),
  dataofmesslist(
      func: null,
      image: 'assets/images/us2.png',
      time: '22:29',
      name: '??bang??',
      seen: true,
      mess: 'Bạn: ảo vc'),
  dataofmesslist(
      func: null,
      image: 'assets/images/us1.png',
      time: '31 thg 8',
      name: 'Dương Minh Tài',
      seen: true,
      mess: 'Bạn: Mô rồi'),
  dataofmesslist(
      func: null,
      image: 'assets/images/us3.png',
      time: '30 thg 8',
      name: 'Trần Anh Tú sp của anh rôn',
      seen: true,
      mess: 'Bạn: chi chán rkk'),
  dataofmesslist(
      func: null,
      image: 'assets/images/us4.png',
      time: '21 thg 8',
      name: 'Nguyễn Văn Hiến',
      seen: true,
      mess: 'Bạn đã gửi một ảnh.'),
  dataofmesslist(
      func: null,
      image: 'assets/images/us6.png',
      time: '22:16',
      name: 'Hà Nguyên',
      seen: false,
      mess: 'Oke tính sau'),
  dataofmesslist(
      func: null,
      image: 'assets/images/us5.png',
      time: '4 thg 9',
      name: 'Nguyễn Hữu Thắng',
      seen: false,
      mess: 'Chuẩn bị đồ bơ xuống đi rôn'),
  dataofmesslist(
      func: null,
      image: 'assets/images/us7.png',
      time: ' CN',
      name: 'HADES',
      seen: false,
      mess: 'HADES đã gửi 1 ảnh'),
  dataofmesslist(
      func: Icons.notifications_off,
      image: 'assets/images/us8.png',
      time: 'Th 3',
      name: 'Hội những người cơ to trừ Bảo',
      seen: false,
      mess: 'Bạn: ảo vc'),
  dataofmesslist(
      func: null,
      image: 'assets/images/us9.png',
      time: '23:03',
      name: 'Bảo Văn',
      seen: false,
      mess: 'Giáo án cặp bot full ap =))'),
];
