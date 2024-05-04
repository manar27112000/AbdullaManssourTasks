import 'package:flutter/cupertino.dart';

import '../bmi/bmi_calculator.dart';
import 'package:flutter/material.dart';

class bmi_result_screen extends StatelessWidget {

  late final double result;
  bmi_result_screen({ required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:  Text('BMI Calculator',style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
      ),
      body: Column
        (
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Your Result',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[400],   borderRadius: BorderRadius.circular(10.0),

                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Normal',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35)),
                    SizedBox(height: 30,),
                    Text('${result.round()}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40),),
                    SizedBox(height: 30,),
                    Text('you have a normal body weight ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  ],
                ),
              ),
            ),
          ),
        Container(

          height: 60.0,
          child: MaterialButton(
            color: Colors.blue,
            height: 50
            ,minWidth: double.infinity,
            onPressed: ()=>{
             // this.result=0,

            /*
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>BmiScreen()))
*/
    },
            child: const Text('RE-CALCULATE'),),
        )


        ],
      ),

    );
  }
}
