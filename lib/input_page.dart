import 'dart:ffi';

import 'package:flutter/material.dart';

const activeCardColor=Color(0xFF1D1E33);
const bottomContainerHeight=80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ReusableCard(colour:activeCardColor),

              ),
              Expanded(
                child: ReusableCard(colour: activeCardColor),
              ),
            ],

          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(colour: activeCardColor),
              ),
              Expanded(
                child: ReusableCard(colour: activeCardColor),
              ),
            ],
          ),
          Container(
            child: Center(child: Text('Calculate',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),),
            color: Color(0xFFEB1555),
            width:double.infinity,
            height:bottomContainerHeight,
            margin: EdgeInsets.only(top: 10),


          )
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData.dark(),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {  },
        ),
      ),

    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});
   final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      margin: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
      decoration: BoxDecoration(
        color:colour,
        borderRadius:BorderRadius.circular(10)
      ),
    );
  }
}