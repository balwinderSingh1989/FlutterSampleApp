import 'package:flutter/material.dart';
import 'package:sampleapp/Screens/Home/model/customermodel.dart';
import 'package:sampleapp/uicomponents/textstyles.dart';

import 'customer_detail_card.dart';
import 'subcard.dart';

class Body extends StatelessWidget {

  final Customer customer;
  Body(this.customer);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.blue, //change your color here
            ),
            title: Text(customer.name, style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white),

        body: Column(
          children: <Widget>[
            Container(child: customerCard(customer)),
            SizedBox(
              height: 20.0,
            ),
            //Account Widget
            subCard(
                type: "Spent balance", pinColor: Colors.pinkAccent, amount: customer.emi),
            //Average Rate card Widget
            subCard(
                type: "Average Spent",
                pinColor: Colors.blue,
                amount: customer.intrestRate),
            //Lates Fee card Widget
            subCard(
                type: "Late Fess Rate",
                pinColor: Colors.deepOrange,
                amount: customer.processing_fee),
            //Tenure card Widget
            subCard(
                type: "Tenure",
                pinColor: Colors.green,
                amount: customer.tenure),
            SizedBox(
              height: 30.0,
            ),

            //Apply Button
            RaisedButton(
                padding:
                const EdgeInsets.symmetric(horizontal: 36.0, vertical: 0.0),
                color: Color.fromRGBO(95, 212, 104, 1.0),
                elevation: 4.0,
                child: new Text(
                  "Apply",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0)))
            //Tenure Card
          ],
        ));
  }




}
