import'package:flutter/material.dart';
import 'package:untitled/pop_page.dart';
import 'package:untitled/secondpage.dart';

import 'assignment2page2.dart';
import 'login_page.dart';
import 'main.dart';
class FourPages extends StatefulWidget {
  final String data;
 final double data1;
  final String data2;
 final double  data3;
  FourPages({super.key, required this.data,required this.data1,required this.data2,required this.data3});

  @override
  _ClickableIconButtonState createState() => _ClickableIconButtonState();
}
enum OS { Apple, Grapes, Banana,Mangoes }
class _ClickableIconButtonState extends State<FourPages> {
  bool isClicked = false;
  late String e;
  OS? _os = OS.Apple;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Bill',style: TextStyle(fontSize: 30),),
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
        var data1;
        data1=widget.data1;
        var data3;
        data3=widget.data3;
        double data4;
        data4=data1+data3;
        String fo = data4.toStringAsFixed(2);
        return Center(

          child: Column(
            children: <Widget>[

              const SizedBox(height: 50,),

              const SizedBox(height: 30,),
              ListTile(
                leading: Text('            '),
                title: const Text('Items Summary',style: TextStyle(fontSize: 40),),
                //trailing: Text('Prices/KG',style: TextStyle(fontSize: 40),),

              ),
              const SizedBox(height: 30,),

              ListTile(
                  title:  Text(widget.data,style: TextStyle(fontSize: 30),),
                  trailing: Text('$data1',style: TextStyle(fontSize: 30),),

              ),
SizedBox(height: 20,),
              ListTile(
                  title:  Text(widget.data2,style: TextStyle(fontSize: 30),),
                  trailing: Text('$data3',style: TextStyle(fontSize: 30),),

              ),
              SizedBox(height: 20,),
                  Divider(thickness: 5,
                  color: Colors.grey[400],),
              SizedBox(height: 20,),
              ListTile(
                title:  Text('TOTAL:',style: TextStyle(fontSize: 30),),
                trailing: Text(fo,style: TextStyle(fontSize: 30),),

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
