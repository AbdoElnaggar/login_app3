// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, deprecated_member_use, sort_child_properties_last, sized_box_for_whitespace, unused_import, duplicate_ignore, unnecessary_null_comparison, body_might_complete_normally_nullable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:music_app/faviorut.dart';
import 'package:music_app/signup.dart';


import 'widgits/app_color.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  bool emailIsFilled = false;
bool passwordIsFilled = false;
  bool secret=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key:_formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hellow !',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'WELCOME BACK',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        
                        label: Text('email',style: TextStyle(fontSize: 17,color:AppColor.text),),
                      ),

                      validator: (value) {
                                  if (value == null || value.isEmpty) {  
                                    return 'email is reqired';
                                  }
                                  return null;
                                    }
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText:secret,
                      decoration: InputDecoration(   
                       
                        label: Text('password'),
                         
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          secret=!secret;                       
                        });
                      },  icon:Icon(secret? Icons.visibility_off_outlined :  Icons.remove_red_eye)),
                      ),
                       validator: (value) {
                                  if (value == null || value.isEmpty) {  
                                    return 'Password is reqired';
                                  }
                                  return null;
                                    }
                      ),
              
                   
              
              
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password ?',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ))),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                if (_formKey.currentState!.validate()) {
                          // If the form is valid, then proceed
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Faviorut()));
    }
  },
                      child: Text(
                        'Log in',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: TextButton(
                    onPressed: () {
                      
                          
                   Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
    },
                   
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
