import 'package:flutter/material.dart';

import 'constants.dart';

class Result_page extends StatefulWidget {
  const Result_page({super.key});

  @override
  State<Result_page> createState() => _Result_pageState();
}

class _Result_pageState extends State<Result_page> {
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
               flex: 4,
              child: Container(
                width: double.infinity,
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Normal'),
                    Text('18.3',style:kValueTextStyle,),
                    Text('Your BMI result is quite low,you `\n should eat more!')
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
