import 'package:flutter/material.dart';

class Customer {
  final String id;
  final String name;
  final String loanAmount;
  final String emi;
  final String intrestRate;
  final String processing_fee;
  final String tenure;
  final LinearGradient gradientcolor;

  Customer({this.id, this.name, this.loanAmount, this.emi, this.intrestRate,
    this.processing_fee, this.tenure,this.gradientcolor});


}