import 'package:flutter/material.dart';
import 'package:sampleapp/Screens/CustomerDetail/components/body.dart';
import 'package:sampleapp/Screens/Home/model/customermodel.dart';

class CustomerDetail extends StatelessWidget {
  final Customer customer;

  CustomerDetail(this.customer);

  @override
  Widget build(BuildContext context) {
    return Body(customer);
  }


}
