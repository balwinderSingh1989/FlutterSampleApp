import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first sample'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Container(

                color: Colors.cyan[200],
                child : Text('hi')

              ),
              Container(

                  color: Colors.red[200],
                  child : Text('hi again')

              ),
              Container(

                  color: Colors.pink[200],
                  child : Text('hmmm')

              ),

            ],

          ),



          Text('Hello World'),
          FlatButton(

            onPressed: () {},
            color: Colors.red[100],
            child: Text('click me'),
          ),
          Container(
          color: Colors.red,
            padding: EdgeInsets.all(10.00),
            child: Text('cick me'),

          ),
        ],

//        child: Text('hello ninjas',
//          style: TextStyle(
//              fontSize: 20.0,
//              fontWeight: FontWeight.bold,
//              letterSpacing: 2.0,
//              color: Colors.green[600]
//          ),
//        ),


      ),
      floatingActionButton : FloatingActionButton (
        child:  Text('click'),
      ),
    );
  }
}

class statteFul extends StatefulWidget {
  @override
  _statteFulState createState() => _statteFulState();
}

class _statteFulState extends State<statteFul> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

