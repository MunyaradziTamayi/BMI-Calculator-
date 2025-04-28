import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Reusable_card.dart';
import 'card_Content.dart';


const inactiveCardColor=Color(0xFF111328);
const activeCardColor=Color(0xFF1D1E33);
const bottomContainerHeight=80.0;

const cardTextStyle= TextStyle(
        fontSize:15,);


enum GenderType{
  male,female,empty
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {

    GenderType selectedGender=GenderType.empty;

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
                child: ReusableCard(
                  onPress:(){
                    setState(() {
                      selectedGender=GenderType.male;
                    });
                  },
                  colour:selectedGender==GenderType.male?activeCardColor:inactiveCardColor,
                  cardChild: CardContent(
                    cardText:Text('Male',
                    style:cardTextStyle),

                    CardIcon: FontAwesomeIcons.mars ,
                  ),


                ),
                

              ),
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender=GenderType.female;
                    });
                  },
                    colour:selectedGender==GenderType.female?activeCardColor:inactiveCardColor,
                    cardChild: CardContent(
                      cardText:Text('Female',style: cardTextStyle,),
                      CardIcon: FontAwesomeIcons.venus ,),


                ),
              ),
            ],

          ),
          Expanded(

            child: ReusableCard(
              onPress:(){

              },
                colour: activeCardColor,
              cardChild: CardContent(
                cardText:Text('????',style: cardTextStyle,),
                CardIcon: FontAwesomeIcons.mars ,
              ),),
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress:(){

                  },
                    colour: activeCardColor,
                  cardChild: CardContent(
                    cardText:Text('Weight',style: cardTextStyle,),
                    CardIcon: FontAwesomeIcons.mars ,
                  ),
                 ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress:(){

                  },
                    colour: activeCardColor,
                  cardChild: CardContent(
                    cardText:Text('Height',
                    style: cardTextStyle),
                    CardIcon: FontAwesomeIcons.mars ,
                  ),


                ),
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



