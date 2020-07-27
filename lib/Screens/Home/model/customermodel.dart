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
  final List<CustomerSpentData> customerSpentData;

  Customer({this.id, this.name, this.loanAmount, this.emi, this.intrestRate,
    this.processing_fee, this.tenure,this.gradientcolor,this.customerSpentData});


}

class CustomerSpentData {
  String category;
  double ammountSpent;
  Color colorval;

  CustomerSpentData(this.category, this.ammountSpent, this.colorval);
}