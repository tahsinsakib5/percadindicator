
// ignore_for_file: prefer_const_literals_to_create_immutables, unused_import

import 'package:percadindicator/test.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

     double iscorect =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircularPercentIndicator(
            radius:150,
            animation: true,
            animationDuration:1000,
          percent:iscorect,
          lineWidth: 40,
          progressColor: Colors.pink,
          backgroundColor:Color.fromARGB(255, 231, 198, 209),
          circularStrokeCap: CircularStrokeCap.round,
          ),

          ElevatedButton(onPressed: (){
           navigat();

          }, child: Text("start"))
        ],
      ),
      
    );
  }

  Future navigat()async{
       setState(() {
              if(iscorect==0){
                iscorect++;
              }else{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Test(),));
              }
            });
            

          
  }
}