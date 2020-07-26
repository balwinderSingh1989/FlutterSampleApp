import 'package:flutter/material.dart';
import 'package:sampleapp/Screens/CustomerDetail/cutomer_details.dart';
import 'package:sampleapp/Screens/Home/model/customermodel.dart';
import 'package:sampleapp/uicomponents/textstyles.dart';

/**
 * customer card
 *
 */
class CustomerCard extends StatelessWidget {
  CustomerCard({
    this.customerList,
    this.index
  });

  final List<Customer> customerList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      margin: new EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints.expand(height: 165.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(gradient: customerList[index].gradientcolor,),
        height: 165.0,
        child: Container(

          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[

              //This Widget is for Bank Title, LoanAmount Title and Loan Amount
              Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(customerList[index].name,
                        style: TextStyles.customerTitle),
                    SizedBox(height: 50.0,),
                    Text("Loan Amount", style: TextStyles.loanAmountTitle),
                    SizedBox(height: 10.0,),
                    Text(customerList[index].loanAmount,
                        style: TextStyles.customerTitle),

                  ],
                ),
                alignment: AlignmentDirectional.topStart,
              ),


              //This Widget is for Apply button (Bottom End)
              Align(
                child: new RaisedButton(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 0.0),
                    color: Colors.white,
                    elevation: 4.0,
                    child: new Text("Approve", style: TextStyles.applyButton,),
                    onPressed: () {
                      //Navigate to BankDetail Screen
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            CustomerDetail(customerList[index]),
                      ));
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0))
                ),
                alignment: AlignmentDirectional.bottomEnd,
              ),
            ],
          ),
        ),
      ),
    );
  }
}