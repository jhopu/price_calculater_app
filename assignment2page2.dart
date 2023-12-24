import'package:flutter/material.dart';
import 'package:untitled/pop_page.dart';
import 'package:untitled/secondpage.dart';

import 'assignment2page3.dart';
import 'login_page.dart';
import 'main.dart';
class SecondPages extends StatefulWidget {
  @override
  _ClickableIconButtonState createState() => _ClickableIconButtonState();
}
enum OS { Cauliflower, Potatoes, Beans,Cabbage }
class _ClickableIconButtonState extends State<SecondPages> {
  bool isClicked = false;
   String d='Cauliflower';
   double e=2.36;
  OS? _os = OS.Cauliflower;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Choose Vegetables',style: TextStyle(fontSize: 30),),
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
                    title: const Text('Cauliflower',style: TextStyle(fontSize: 30),),
                    trailing: Text('2.36',style: TextStyle(fontSize: 30),),
                    leading: Transform.scale(
                      scale: 1.5,
                      child: Radio<OS>(
                        activeColor: Colors.blue,
                        value: OS.Cauliflower,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                            d='Cauliflower';
                            e=2.36;
                          });
                        },
                      ),
                    )
                ),
                ListTile(
                    title: const Text('Potatoes',style: TextStyle(fontSize: 30),),
                    trailing: Text('1.25',style: TextStyle(fontSize: 30),),
                    leading: Transform.scale(
                      scale:1.5,
                      child: Radio<OS>(
                        activeColor: Colors.blue,
                        value: OS.Potatoes,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                           d='Potatoes';
                           e=1.25;
                          });
                        },
                      ),
                    )
                ),
                ListTile(
                    title: const Text('Beans',style: TextStyle(fontSize: 30),),
                    trailing: Text('0.84',style: TextStyle(fontSize: 30),),
                    leading: Transform.scale(
                      scale:1.5,
                      child: Radio<OS>(
                        activeColor: Colors.blue,
                        value: OS.Beans,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                           d='Beans';
                           e=0.84;
                          });
                        },
                      ),
                    )
                ),
                ListTile(
                    title: const Text('Cabbage',style: TextStyle(fontSize: 30),),
                    trailing: Text('1.34',style: TextStyle(fontSize: 30),),
                    leading: Transform.scale(
                      scale:1.5,
                      child: Radio<OS>(
                        activeColor: Colors.blue,

                        value: OS.Cabbage,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                           d='Cabbage';
                           e=1.34;
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
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>ThirdPages(
                          ans:'$d' ,
                          ans1: e,
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
