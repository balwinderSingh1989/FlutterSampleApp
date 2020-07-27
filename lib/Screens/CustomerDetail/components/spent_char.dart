import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:sampleapp/Screens/Home/model/customermodel.dart';

class ChartPage extends StatefulWidget {

   Customer customer;

   ChartPage(this.customer);

  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  List<charts.Series<CustomerSpentData, String>> _seriesPieData;

  Customer customer;

  _generateData() {
    var piedata = customer.customerSpentData;

//    [
//      new Task('Utility', 35.8, Color(0xff3366cc)),
//      new Task('Telecom', 8.3, Color(0xff990099)),
//      new Task('LifeStyle', 10.8, Color(0xff109618)),
//      new Task('Work', 15.6, Color(0xfffdbe19)),
//      new Task('Loan Payments', 19.2, Color(0xffff9900)),
//      new Task('Credits', 10.3, Color(0xffdc3912)),
//    ];

    _seriesPieData.add(
      charts.Series(
        domainFn: (CustomerSpentData task, _) => task.category,
        measureFn: (CustomerSpentData task, _) => task.ammountSpent,
        colorFn: (CustomerSpentData task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (CustomerSpentData row, _) => '${row.ammountSpent}',
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    customer = this.widget.customer;
    _seriesPieData = List<charts.Series<CustomerSpentData, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Text(
                'Customer Spent Categories',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: charts.PieChart(_seriesPieData,
                    animate: true,
                    animationDuration: Duration(seconds: 5),
                    behaviors: [
                      new charts.DatumLegend(
                        outsideJustification:
                            charts.OutsideJustification.endDrawArea,
                        horizontalFirst: false,
                        desiredMaxRows: 2,
                        cellPadding:
                            new EdgeInsets.only(right: 4.0, bottom: 4.0),
                        entryTextStyle: charts.TextStyleSpec(
                            color: charts.MaterialPalette.purple.shadeDefault,
                            fontFamily: 'Georgia',
                            fontSize: 11),
                      )
                    ],
                    defaultRenderer: new charts.ArcRendererConfig(
                        arcWidth: 100,
                        arcRendererDecorators: [
                          new charts.ArcLabelDecorator(
                              labelPosition: charts.ArcLabelPosition.inside)
                        ])),
              ),
            ],
          ),
        ));
  }
}


