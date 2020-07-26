import 'package:flutter/material.dart';

Widget subCard({String type, String amount, Color pinColor}) {
  return Card(
    elevation: 4.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    margin: new EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 12.0,
                  backgroundColor: pinColor,
                ),
                SizedBox(
                  width: 16.0,
                ),
                Text(type,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0)),
              ],
            ),
          ),
          new Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(amount,
                  style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontWeight: FontWeight.w800,
                      fontSize: 20.0)),
            ),
          ),
        ],
      ),
    ),
  );
}