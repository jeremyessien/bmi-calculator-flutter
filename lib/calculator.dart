import 'package:flutter/material.dart';
import 'dart:math';

class CalcBrain{
  CalcBrain({this.height, this.weight});
 final int height;
 final int weight;

 double _bmi;

 String calBMI(){
   _bmi = weight/ pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
 }
 String result(){
   if (_bmi>=25){
     return "Overweight";
   }
   else if (_bmi< 18.5){
     return "Normal";
   }
   else {
     return "Underweight";
   }
 }
 String bmiInterpretation(){
   if (_bmi>=25){
     return "Your BMI is higher than usual";
   }
   else if (_bmi< 18.5){
     return "You're just the perfect fit.";
   }
   else {
     return "You need to increase your proteins.";
   }
 }
}