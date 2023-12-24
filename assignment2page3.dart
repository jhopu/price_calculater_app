import'package:flutter/material.dart';
import 'package:untitled/pop_page.dart';
import 'package:untitled/secondpage.dart';

import 'assignment2page2.dart';
import 'assignment2page4.dart';
import 'login_page.dart';
import 'main.dart';
class ThirdPages extends StatefulWidget {
  @override
  final String ans;
  final double ans1;
  // String data2;
  // String data3;
  ThirdPages({super.key, required this.ans,required this.ans1});
  _ClickableIconButtonState createState() => _ClickableIconButtonState();
}
enum OS { Apple, Grapes, Banana,Mangoes }
class _ClickableIconButtonState extends State<ThirdPages> {
  bool isClicked = false;
   String e='Apple';
   double f=1.36;
  OS? _os = OS.Apple;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Choose Fruits',style: TextStyle(fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){

            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back),
        ),
      ),

      body: Builder(builder: (context) {
        return Center(

          child: Column(
            children: <Widget>[

              const SizedBox(height: 50,),
              const Text(''),
              const SizedBox(height: 30,),
              ListTile(
                leading: Text('            '),
                title: const Text('Items',style: TextStyle(fontSize: 40),),
                trailing: Text('Prices/KG',style: TextStyle(fontSize: 40),),

              ),
              const SizedBox(height: 30,),
              ListTile(
                  title: const Text('Apple',style: TextStyle(fontSize: 30),),
                  trailing: Text('1.36',style: TextStyle(fontSize: 30),),
                  leading: Transform.scale(
                    scale: 1.5,
                    child: Radio<OS>(
                      activeColor: Colors.blue,
                      value: OS.Apple,
                      groupValue: _os,
                      onChanged: (OS? value) {
                        setState(() {
                          _os = value;
                          e='Apple';
                          f=1.36;
                        });
                      },
                    ),
                  )
              ),
              ListTile(
                  title: const Text('Grapes',style: TextStyle(fontSize: 30),),
                  trailing: Text('0.25',style: TextStyle(fontSize: 30),),
                  leading: Transform.scale(
                    scale:1.5,
                    child: Radio<OS>(
                      activeColor: Colors.blue,
                      value: OS.Grapes,
                      groupValue: _os,
                      onChanged: (OS? value) {
                        setState(() {
                          _os = value;
                          e='Grapes';
                          f=0.25;
                        });
                      },
                    ),
                  )
              ),
              ListTile(
                  title: const Text('Banana',style: TextStyle(fontSize: 30),),
                  trailing: Text('2.84',style: TextStyle(fontSize: 30),),
                  leading: Transform.scale(
                    scale:1.5,
                    child: Radio<OS>(
                      activeColor: Colors.blue,
                      value: OS.Banana,
                      groupValue: _os,
                      onChanged: (OS? value) {
                        setState(() {
                          _os = value;
                          e='Banana';
                          f=2.84;
                        });
                      },
                    ),
                  )
              ),
              ListTile(
                  title: const Text('Mangoes',style: TextStyle(fontSize: 30),),
                  trailing: Text('2.34',style: TextStyle(fontSize: 30),),
                  leading: Transform.scale(
                    scale:1.5,
                    child: Radio<OS>(
                      activeColor: Colors.blue,

                      value: OS.Mangoes,
                      groupValue: _os,
                      onChanged: (OS? value) {
                        setState(() {
                          _os = value;
                          e='Mangoes';
                          f=2.34;
                        });
                      },
                    ),
                  )
              ),
              SizedBox(height:200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  GestureDetector(
                    onTap: () {
                      // Action to perform when the Container is tapped
                      Navigator.popUntil(context,ModalRoute.withName('/'),);
                      // Add your logic here
                    },
                    child:Container(
                      alignment: Alignment(0,0),
                      height: 60,
                      width: 150,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(),
                        color: Colors.white,

                      ),

                      child: Text('Cancel',
                        style: TextStyle(fontSize: 30),),
                    ),

                  ),
                  SizedBox(width:100),
                  GestureDetector(
                    onTap: () {
                      // Action to perform when the Container is tapped
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>FourPages(
                       data: '$e',
                        data1: f,
data2: widget.ans,
                        data3: widget.ans1,
                      )));
                      // Add your logic here
                    },
                    child:Container(
                      alignment: Alignment(0,0),
                      height: 60,
                      width: 150,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                        border: Border.all(),
                        color: Colors.deepPurpleAccent,

                      ),

                      child: Text('Next',
                        style: TextStyle(fontSize: 30),),
                    ),

                  ),],),
            ],
          ),
        );
      },
      ),

    );}}
