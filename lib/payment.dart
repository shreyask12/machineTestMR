import 'dart:ui';

import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final List<String> temp = [
    'Confirmed',
    'Order Recieved',
    'Preparing',
    'Delivery',
    'Rate Us'
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('TRACKING'),
        leading: Icon(Icons.menu),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: width,
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Order No : 123832832830'),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color:
                                        index == 0 ? Colors.green : Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  temp[index],
                                  style: index == 0
                                      ? TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.black)
                                      : TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            index != temp.length - 1
                                ? Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 50,
                                      width: 2,
                                      color: index == 0
                                          ? Colors.green
                                          : Colors.grey,
                                    ),
                                  )
                                : Container(),
                          ],
                        );
                      },
                      itemCount: temp.length),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
