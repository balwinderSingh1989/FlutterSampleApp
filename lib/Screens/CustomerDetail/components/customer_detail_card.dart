import 'package:flutter/material.dart';
import 'package:sampleapp/Screens/Home/model/customermodel.dart';
import 'package:sampleapp/uicomponents/textstyles.dart';

Widget customerCard(Customer customer) {


  return Card(
      elevation: 4.0,
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      margin: new EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints.expand(height: 180.0),
        padding: EdgeInsets.all(16.0),
        height: 180.0,
        decoration: BoxDecoration(
          gradient: customer.gradientcolor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(customer.name, style: TextStyles.customerTitle),
            SizedBox(
              height: 50.0,
            ),
            Text("Loan Amount", style: TextStyles.loanAmountTitle),
            SizedBox(
              height: 10.0,
            ),
            Text(customer.loanAmount, style: TextStyles.customerTitle),
          ],
        ),
      ));
}