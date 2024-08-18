// ignore_for_file: unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, dead_code

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/model.dart';

class Faviorut extends StatefulWidget {
  const Faviorut({super.key});

  @override
  State<Faviorut> createState() => _FaviorutState();
}

class _FaviorutState extends State<Faviorut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text('Faviorut'),
        centerTitle: true,
        actions: [Icon(Icons.shopping_cart_rounded),
        SizedBox(width: 10,),
        ],
        
      ),
      body: ListView.separated(
            itemCount: userlist.length,
            itemBuilder: (BuildContext context, int index) {
              Row(children: [
               Icon(Icons.clean_hands)
              ],);
              return ListTile(
                leading: Image.asset(userlist[index].img??'',fit: BoxFit.cover,width: 100,height: 150,),
                title: Text(userlist[index].name??" "),
                subtitle:Text(userlist[index].price??''),
                trailing: Column(children: [
                  Icon(userlist[index].icon),
                  SizedBox(height: 7,),
                  Icon(userlist[index].icons)
                  
                ],),
                
              );
              SizedBox(height: 10,);
            }, separatorBuilder: (BuildContext context, int index) { 
              return Divider(thickness: 2,indent: 10,endIndent: 3,color: Colors.grey,);
             },
          ),
          
        
    );

    
  }
}
