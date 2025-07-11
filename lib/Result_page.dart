import 'package:flutter/material.dart';
import 'calculator_brain.dart';
import 'constants.dart';
import 'staticVariables.dart';

class Result_page extends StatefulWidget {
  const Result_page({super.key});

  @override
  State<Result_page> createState() => _Result_pageState();
}

class _Result_pageState extends State<Result_page> {

  Calculator_brain calc_brains= new Calculator_brain();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(

        children: [
          Text('Your Result',
            style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:60
            ) ,),
          SizedBox(
            height:60
          ),
             Expanded(
               flex: 6,
              child: Container(
                width: double.infinity,
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(bmiCategory,style:kCardTextStyle,),
                    Text(calc_brains.calculateBMI(weight:weight, height:height).toString(),style:kValueTextStyle,),
                    Text(bmiComment,style:TextStyle(
                      fontSize: 20
                    ))
                  ],
                ),
              ),
            ),
          Expanded(

            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                child: Center(child: Text('Re-Calculate',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),),
                color: Color(0xFFEB1555),
                width:double.infinity,

                margin: EdgeInsets.only(top: 10),


              ),
            ),
          ),

        ],

      ),



    );
  }
}

