

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled/login_page.dart';

import 'assignment2page1.dart';


void main(){
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  //const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:FirstPages(),
    );
  }
}
