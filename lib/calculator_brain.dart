import 'dart:math';
import 'input_page.dart';
import 'package:flutter/material.dart';
import 'staticVariables.dart';

class Calculator_brain{

  double calculateBMI({required int weight,required int height}) {
    double bmiResult = weight / pow(height / 100, 2).roundToDouble();

    if(bmiResult<18.5){
      bmiCategory='Underweight';
      bmiComment='Your BMI result is low,you should eat more';
    }
    else if(bmiResult==18.5 && (bmiResult<25)) {
      bmiCategory='normal';
      bmiComment='Your BMI result is normal';
    }
    else if(bmiResult==25 && (bmiResult<30)){
      bmiCategory='Overweight';
      bmiComment='Your BMI result is above normal ,eat less';
    }
    else {
      bmiCategory='Obese';
      bmiComment='Your BMI result is too much ,get on diet!!!';
    }
    return bmiResult;
  }





}