import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:sampleapp/Screens/Home/components/customer_list.dart';

import 'app_drawer.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: AppDrawer(),

      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Accounts",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notification_important,
              color: Colors.blue,
            ),
            onPressed: () {},
          )
        ],
      ),

      body:
    CustomerList()

    );
  }





}
