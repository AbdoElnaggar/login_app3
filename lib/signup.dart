// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, deprecated_member_use, unnecessary_import, unused_import
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_app/faviorut.dart';
import 'package:music_app/login.dart';
import 'package:music_app/widgits/app_color.dart';


class signup extends StatefulWidget {
  const signup({super.key});
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formKey = GlobalKey<FormState>();
  bool secret=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form
            (key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(
                        'WELCOME !',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                       Text('Name',style: TextStyle(fontSize: 15,color:AppColor.text),),

                    TextFormField(
                        
                      decoration: InputDecoration(   
                        
                         ),
                         validator: (value) {
                                    if (value == null || value.isEmpty) {  
                                      return 'Password is reqired';
                                    }
                                    return null;
                                      }
                          ),


                      Text('email',style: TextStyle(fontSize: 15,color:AppColor.text),),

                    TextFormField(
                        
                      decoration: InputDecoration(   
                        suffixIcon:Icon(Icons.email) ,
                         ),
                         validator: (value) {
                                    if (value == null || value.isEmpty) {  
                                      return 'Password is reqired';
                                    }
                                    return null;
                                      }
                          ),



                      SizedBox(height: 10,),
                      Text('Password',style: TextStyle(color:AppColor.text)),
                      TextFormField(
                        obscureText: secret,
                      decoration: InputDecoration(   
                      suffixIcon:IconButton(onPressed: (){
                        setState(() {
                          secret=!secret;
                        });
                      },
                       icon:Icon(secret?Icons.visibility_off_rounded: Icons.remove_red_eye)),
                      ),

                       validator: (value) {
                                    if (value == null || value.isEmpty) {  
                                      return 'Password is reqired';
                                    }
                                    return null;
                                      }
                      ),
                  
                       SizedBox(height: 10,),
                      Text('Confrim Password',style: TextStyle(color:AppColor.text),),
                      TextFormField(
                        obscureText: secret,
                      decoration: InputDecoration(   
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          secret=!secret;
                        });
                      },
                       icon:Icon(secret?Icons.visibility_off_rounded: Icons.remove_red_eye)),
                      ),
                      validator: (value) {
                                    if (value == null || value.isEmpty) {  
                                      return 'Password is reqired';
                                    }
                                    return null;
                                      }
                      )
                      ,
                      SizedBox(height: 40,),
                  
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
                        'SIGN UP',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ButtonStyle(
                  
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account',style: TextStyle(color:AppColor.text,fontSize: 17)),
                         TextButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                         },child: Text('log in ?',
                         style:TextStyle(color: Colors.black,fontSize: 20) ,),
                         )
                      ],
                     ),
                  )
                  
                      ]
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}