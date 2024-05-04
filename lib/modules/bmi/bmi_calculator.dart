import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:login_design_sec3/modules/bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool ismale =true;
  double high=120.0;
  int weight=50;
  int age=20;

  @override
  Widget build(BuildContext context) {
    double result;
    return  Scaffold(
      appBar: AppBar(
        title: const Text (
          'BMI Calculator'
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                              ismale=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: ismale?Colors.blue:Colors.grey[400],
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male, size: 50,),
                              SizedBox(height: 16.0,),
                              Text('MALE', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){setState(() {
                          ismale=false;
                        });},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:! ismale ?Colors.blue: Colors.grey[400],
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female, size: 50,),
                              SizedBox(height: 16.0,),
                              Text('FEMALE', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),

           Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],   borderRadius: BorderRadius.circular(10.0),


                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${high.round()}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40),),
                        SizedBox(width: 5,),
                        Text('cm',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Slider(value: high,
                        activeColor: Colors.blue,
                     // thumbColor: Colors.green,
                  //    inactiveColor: Colors.grey,

                      max: 220.0,onChanged: (value){setState(() {
                          high=value;
                        });},)

                  ],
                ),
              ),
            )

          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],   borderRadius: BorderRadius.circular(10.0),


                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${age}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(heroTag:' age++',onPressed: (){
                              setState(() {
                              age++;
                            });
                              },
                              mini: true,
                              child: Icon(Icons.add),),
                            SizedBox(width: 5,),
                            FloatingActionButton(heroTag:' age--',onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                              mini: true,
                              child: Icon(Icons.remove),)
                          ],
                        )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],   borderRadius: BorderRadius.circular(10.0),


                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${weight}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(heroTag: ' weight++',
                                onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                                mini: true,
                                child: Icon(Icons.add),),
                              SizedBox(width: 5,),

                              FloatingActionButton(heroTag: ' weight--',onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                                mini: true,
                                child: Icon(Icons.remove),)
                            ],
                          )

                        ],
                      ),
                    ),
                  )

                ],
              ),
            )
          ),
          Container(
            height: 60.0,
            child: MaterialButton(
              color: Colors.blue,
                height: 50
              ,minWidth: double.infinity,
                onPressed: ()=>{
                 result = weight/pow(high/100,2),
                  Navigator.push(context,
                      MaterialPageRoute(
                      builder: (context)=>bmi_result_screen(result: result,)))
                 },


              child: const Text('CALCULATE'),),
          )

        ],
      ),
    );
  }
}
