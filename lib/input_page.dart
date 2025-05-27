
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Reusable_card.dart';
import 'Reusable_card_age_weight.dart';
import 'card_Content.dart';
import 'constants.dart';
import 'height_card.dart';

enum GenderType{
  male,female,empty
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
     int height =180;
     int age=4;
     int weight=4;
    GenderType selectedGender=GenderType.empty;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(

            children: [
              Expanded(
                child:GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender=GenderType.male;
                    });
                  },
                  child: ReusableCard(
                    colour:selectedGender==GenderType.male?kActiveCardColor:kInactiveCardColor,
                    cardChild: CardContent(
                      cardText:Text('Male',
                          style:kCardTextStyle),

                      CardIcon: FontAwesomeIcons.mars ,
                    ),
                  ),
                )

                

              ),
              Expanded(
                child:GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender=GenderType.female;
                    });

                  },
                  child: ReusableCard(

                    colour:selectedGender==GenderType.female?kActiveCardColor:kInactiveCardColor,
                    cardChild: CardContent(
                      cardText:Text('Female',style: kCardTextStyle,),
                      CardIcon: FontAwesomeIcons.venus ,),


                  ),
                 ),

              ),
            ],

          ),
          Expanded(
            child: HeightCard(colour: kActiveCardColor,

                   cardChild: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Height',style: kCardTextStyle,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.baseline,
                         textBaseline: TextBaseline.alphabetic,
                         children: [
                           Text(height.toString(),style:kHeightTextStyle),
                           Text('cm',style: kCardTextStyle,)
                         ],
                       ),
                       SliderTheme(
                         data:SliderTheme.of(context).copyWith(
                           thumbColor:Color(0XFFEB1555),
                           overlayColor: Color(0X29EB1555),
                           activeTrackColor:Color(0XFFEB1555) ,
                           thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                           overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                         ),
                         child: Slider(
                           min:120,
                           max:220 ,
                           value: height.toDouble(),
                           onChanged:(double newValue){
                             setState(() {
                               height=newValue.round();
                             });

                           },
                           inactiveColor:Color(0XFF8D8E98),),
                       )

                     ],
                   ),
            ),
          ),
          Row(
            children: [
              Expanded(

                child: Reusable_card_age_weight(
                  colour: kActiveCardColor,
                  cardChild: Column(

                    children: [
                      Text('Age',style: kCardTextStyle,),

                      SizedBox(
                        height: 40,
                      ),
                      Text(age.toString(),style: kHeightTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            shape:CircleBorder(side:BorderSide.none,eccentricity: 0.0),
                              child: Icon(FontAwesomeIcons.add,size: 40,),
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                          }),
                          SizedBox(
                            width: 40,
                          ),
                          FloatingActionButton(
                              shape:CircleBorder(side:BorderSide.none,eccentricity: 0.0),
                              child: Icon(FontAwesomeIcons.subtract,size: 40,),
                              onPressed: (){
                                setState(() {
                                  age--;
                                });

                          })

                        ],
                      ),



                    ],
                  ),

                  ),
              ),
              Expanded(

                child: Reusable_card_age_weight(
                  colour: kActiveCardColor,
                  cardChild: Column(

                    children: [
                      Text('Weight',style: kCardTextStyle,),

                      SizedBox(
                        height: 40,
                      ),
                      Text(weight.toString(),style: kHeightTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                              shape:CircleBorder(side:BorderSide.none,eccentricity: 0.0),
                              child: Icon(FontAwesomeIcons.add,size: 40,),
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              }),
                          SizedBox(
                            width: 40,
                          ),
                          FloatingActionButton(
                              shape:CircleBorder(side:BorderSide.none,eccentricity: 0.0),
                              child: Icon(FontAwesomeIcons.minus,size: 40,),
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              }),

                        ],
                      ),



                    ],
                  ),

                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/Resultpage');
            },
            child: Container(
              child: Center(child: Text('Calculate',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),),
              color: Color(0xFFEB1555),
              width:double.infinity,
              height:kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10),


            ),
          )
        ],
      ),


    );
  }
}
// class RoundIconButton extends StatelessWidget {
//   RoundIconButton({required this.icon, required  this.onPressed});
//
//   final IconData icon;
//   final Function onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       constraints: BoxConstraints(minWidth: 56.0,minHeight: 56.0
//       ),
//       child: Icon(icon),
//       fillColor: Colors.purpleAccent,
//       shape: CircleBorder(),
//       onPressed:onPressed(),
//     );
//   }
// }







