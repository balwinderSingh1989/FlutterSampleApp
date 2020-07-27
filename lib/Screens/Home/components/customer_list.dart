import 'package:flutter/material.dart';
import 'package:sampleapp/Screens/Home/model/customermodel.dart';

import 'customer_list_card.dart';

class CustomerList extends StatefulWidget {
  List<Customer> customerList = [
    Customer(
        id: "1",
        name: "Balwinder Singh",
        loanAmount: "AED 25000",
        emi: "AED 11732",
        intrestRate: "11.69 % ",
        processing_fee: "1.30 %",
        tenure: "2 years",
        gradientcolor: gradientBankCard(Color.fromRGBO(160, 71, 45, 1.0),
            Color.fromRGBO(221, 132, 58, 0.90)),
        customerSpentData: [
          new CustomerSpentData('Utility', 35.8, Color(0xff3366cc)),
          new CustomerSpentData('Telecom', 8.3, Color(0xff990099)),
          new CustomerSpentData('LifeStyle', 10.8, Color(0xff109618)),
          new CustomerSpentData('Work', 15.6, Color(0xfffdbe19)),
          new CustomerSpentData('Loan Payments', 19.2, Color(0xffff9900)),
          new CustomerSpentData('Credits', 10.3, Color(0xffdc3912)),
        ]
    ),
    Customer(
        id: "2",
        name: "Vicky",
        loanAmount: "AED 150000",
        emi: "AED 10552",
        intrestRate: "11.70 % ",
        processing_fee: "1.34 %",
        tenure: "2 years",
        gradientcolor: gradientBankCard(Color.fromRGBO(62, 130, 160, 1.0),
            Color.fromRGBO(70, 174, 232, 0.80)),
        customerSpentData: [
        new CustomerSpentData('Utility', 8.3, Color(0xff3366cc)),
        new CustomerSpentData('Telecom', 35.8, Color(0xff990099)),
        new CustomerSpentData('LifeStyle', 15.6, Color(0xff109618)),
        new CustomerSpentData('Work', 10.8, Color(0xfffdbe19)),
        new CustomerSpentData('Loan Payments', 10.3, Color(0xffff9900)),
        new CustomerSpentData('Credits', 19.3, Color(0xffdc3912)),
  ]

    ),
    Customer(
        id: "3",
        name: "Christina",
        loanAmount: "AED 350000",
        emi: "AED 11037",
        intrestRate: "11.63 % ",
        processing_fee: "1.22 %",
        tenure: "2 years",
        gradientcolor: gradientBankCard(Color.fromRGBO(230, 79, 149, 1.0),
            Color.fromRGBO(229, 79, 140, 0.80)),
       customerSpentData: [
      new CustomerSpentData('Utility', 8.3, Color(0xff3366cc)),
      new CustomerSpentData('Telecom', 35.8, Color(0xff990099)),
      new CustomerSpentData('LifeStyle', 15.6, Color(0xff109618)),
      new CustomerSpentData('Work', 10.8, Color(0xfffdbe19)),
      new CustomerSpentData('Loan Payments', 10.3, Color(0xffff9900)),
      new CustomerSpentData('Credits', 19.3, Color(0xffdc3912)),
       ]

    ),
    Customer(
        id: "2",
        name: "Nyra",
        loanAmount: "AED 450000",
        emi: "AED 11037",
        intrestRate: "11.63 % ",
        processing_fee: "1.22 %",
        tenure: "2 years",
        gradientcolor: gradientBankCard(Color.fromRGBO(130, 79, 149, 1.0),
            Color.fromRGBO(229, 79, 140, 0.80)),
        customerSpentData: [
        new CustomerSpentData('Utility', 10.3, Color(0xff3366cc)),
        new CustomerSpentData('Telecom', 15.8, Color(0xff990099)),
        new CustomerSpentData('LifeStyle', 45.6, Color(0xff109618)),
        new CustomerSpentData('Work', 10.8, Color(0xfffdbe19)),
        new CustomerSpentData('Loan Payments', 30.3, Color(0xffff9900)),
        new CustomerSpentData('Credits', 19.3, Color(0xffdc3912)),
  ]


    ),
  ];

  static LinearGradient gradientBankCard(Color startColor, Color endColor) {
    return LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [startColor, endColor],
        stops: [0.0, 0.7]);
  }

  @override
  _CustomerListState createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  List<Customer> customerList;
  List<Customer> items = List<Customer>();
  TextEditingController editingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    customerList = this.widget.customerList;
    items.addAll(customerList);
  }

  void filterSearchResults(String query) {
    List<Customer> dummySearchList = List<Customer>();

    dummySearchList.addAll(customerList);

    if (query.isNotEmpty) {
      List<Customer> dummyListData = List<Customer>();

      dummySearchList.forEach((item) {
        if (item.name.contains(query) || item.loanAmount.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(customerList);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: (value) {
            filterSearchResults(value);
          },
          controller: editingController,
          decoration: InputDecoration(
              labelText: "Search",
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)))),
        ),
      ),
      Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomerCard(customerList: items, index: index);
          },
        ),
      ),
    ]));
  }
}
