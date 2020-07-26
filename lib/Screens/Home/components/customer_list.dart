import 'package:flutter/material.dart';
import 'package:sampleapp/Screens/CustomerDetail/cutomer_details.dart';
import 'package:sampleapp/Screens/Home/model/customermodel.dart';
import 'package:sampleapp/uicomponents/textstyles.dart';

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
            Color.fromRGBO(221, 132, 58, 0.90))),
    Customer(
        id: "2",
        name: "Vicky",
        loanAmount: "AED 150000",
        emi: "AED 10552",
        intrestRate: "11.70 % ",
        processing_fee: "1.34 %",
        tenure: "2 years",
        gradientcolor: gradientBankCard(Color.fromRGBO(62, 130, 160, 1.0),
            Color.fromRGBO(70, 174, 232, 0.80))),
    Customer(
        id: "3",
        name: "Christina",
        loanAmount: "AED 350000",
        emi: "AED 11037",
        intrestRate: "11.63 % ",
        processing_fee: "1.22 %",
        tenure: "2 years",
        gradientcolor: gradientBankCard(Color.fromRGBO(230, 79, 149, 1.0),
            Color.fromRGBO(229, 79, 140, 0.80))),
    Customer(
        id: "2",
        name: "Nyra",
        loanAmount: "AED 450000",
        emi: "AED 11037",
        intrestRate: "11.63 % ",
        processing_fee: "1.22 %",
        tenure: "2 years",
        gradientcolor: gradientBankCard(Color.fromRGBO(130, 79, 149, 1.0),
            Color.fromRGBO(229, 79, 140, 0.80))),
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
  List<Customer> items =  List<Customer>();
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


    if(query.isNotEmpty) {
      List<Customer> dummyListData = List<Customer>();

      dummySearchList.forEach((item) {
        if(item.name.contains(query)  || item.loanAmount.contains(query)) {
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

      child: Column(
          children: <Widget>[
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
    child : ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: items.length,
    itemBuilder: (BuildContext context, int index) {
    return CustomerCard(customerList: items , index : index );
    },
    )
    ,
    ),
    ])
    );

  }
}




