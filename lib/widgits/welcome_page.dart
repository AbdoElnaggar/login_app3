// ignore_for_file: camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/login.dart';
import 'package:music_app/widgits/app_color.dart';

class welcomw_page extends StatefulWidget {
  const welcomw_page({super.key});

  @override
  State<welcomw_page> createState() => _welcomw_pageState();
}

class _welcomw_pageState extends State<welcomw_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('asset/images/background.jpeg',),fit:BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('MAKE YOUR',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color:AppColor.text),),
           SizedBox(height: 10,),
            Text('HOME BEAUTIFUL',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color:Colors.black)),
            ],
          ),
          SizedBox(height: 10,),
          Text('The best simple place where you\n discover most wonderful furnitures\n and make your home beautiful',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,height: 2)),
          SizedBox(height: 15,),
           GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => const login() ));
            },
             child: Container(
              padding:EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              width: 159,
              height: 54,
              decoration: BoxDecoration(
                color: Colors.black,
               borderRadius: BorderRadius.circular(6)
              ),
               
              child: Text('GET START',style: TextStyle(color: Colors.white,fontSize:22 ),textAlign: TextAlign.center,),
             ),
           )
       
          ],
        ),
        
        
      ),
    );
  }
}