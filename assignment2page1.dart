import'package:flutter/material.dart';


import 'assignment2page2.dart';

class FirstPages extends StatelessWidget{
  FirstPages({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
       backgroundColor: Colors.purple[100],
        body: Builder(builder: (context) {
          return  Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  GestureDetector(
                    onTap: () {
                      // Action to perform when the Container is tapped
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>SecondPages()));
                      // Add your logic here
                    },
                    child:Container(
                      alignment: Alignment(0,0),
                      height: 80,
                      width: 300,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurpleAccent,

                      ),

                      child: Text('Start Shopping',
                        style: TextStyle(fontSize: 30),),
                    ),
                    //
                    // Padding(
                    //   padding: const EdgeInsets.all(20.0),
                    //   child: ElevatedButton(
                    //     child:  Text('Start Shopping'),
                    //
                    //     onPressed: (){
                    //       Navigator.push(context,MaterialPageRoute(builder:(context)=>SecondPage()));
                    //     }, ),
                    // ),
                  )





                ]
            ),
          );},)

    );}}