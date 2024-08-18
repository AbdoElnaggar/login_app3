// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Usermodel{
  String? name;
  String? img;
  String? price;
  String? time;
  IconData? icon;
  IconData? icons;
  Usermodel({
    this.name,
    this.img,
    this.price,
    required this.icon,
    this.icons,
  });
}
List<Usermodel> userlist=[
Usermodel(
  name: 'Coffee Table',
  img: 'asset/images/download.jpeg',
  price: '50.00',
  icon:Icons.clear_sharp,
  icons:Icons.shopping_bag_sharp,
) ,
Usermodel(
  name: 'Coffee Chair',
  img:'asset/images/img2.jpeg',
  price: '50.00 S',
  icon:Icons.clear_sharp,
  icons:Icons.shopping_bag_sharp,
) ,
Usermodel(
  name: 'Minimal Stand',
  img: 'asset/images/img3.jpeg',
  price: '50.00 S',
icon:Icons.clear_sharp,
icons:Icons.shopping_bag_sharp,
) ,
Usermodel(
  name: 'Minimal Desk',
  img: 'asset/images/img4.jpeg',
  price: '50.00 S',
icon:Icons.clear_sharp,
icons:Icons.shopping_bag_sharp,
) ,

Usermodel(
  name: 'Minimal Lamp',
  img:'asset/images/img5.jpeg',
  price: '50.00 S',
  icon:Icons.clear_sharp,
  icons:Icons.shopping_bag_sharp,
) ,
Usermodel(
  name: 'Coffee Table',
  img: 'asset/images/download.jpeg',
  price: '50.00',
  icon:Icons.clear_sharp,
  icons:Icons.shopping_bag_sharp,
) ,
Usermodel(
  name: 'Coffee Chair',
  img:'asset/images/img2.jpeg',
  price: '50.00',
  icon:Icons.clear_sharp,
  icons:Icons.shopping_bag_sharp,
) ,
Usermodel(
  name: 'Minimal Stand',
  img: 'asset/images/img3.jpeg',
  price: '50.00 S',
icon:Icons.clear_sharp,
icons:Icons.shopping_bag_sharp,
) ,
Usermodel(
  name: 'Minimal Desk',
  img: 'asset/images/img4.jpeg',
  price: '50.00 S',
icon:Icons.clear_sharp,
icons:Icons.shopping_bag_sharp,
) ,

Usermodel(
  name: 'Minimal Lamp',
  img:'asset/images/img5.jpeg',
  price: '50.00 S',
  icon:Icons.clear_sharp,
  icons:Icons.shopping_bag_sharp,
) ,

];