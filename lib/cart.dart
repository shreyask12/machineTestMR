import 'package:flutter/material.dart';
import 'package:machinetestm/payment.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            width: width,
            // height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Restaurant Name',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 300,
                  child: ListView(
                    children: [
                      Container(
                        width: width,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dish Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(
                                  'Ice Cream',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text('Rs. 35',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Expanded(child: Counter()),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dish Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(
                                  'Ice Cream',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text('Rs. 35',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Expanded(child: Counter()),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Grand Total .'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Rs. 65',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Delivery', style: TextStyle(fontSize: 25)),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Pick Up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 25,
                              )),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text('Marina Mall Brunch',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 20)),
                      SizedBox(
                        width: 50,
                      ),
                      Text('Mon-Thu : 06:00 - 22:00',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 15)),
                      Text('Fri-Sat : 06:00 - 22:00',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 15)),
                      SizedBox(
                        width: 30,
                      ),
                      Text('+91 967493999'),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Pick Up Your Order in '),
                      Text('30 mins',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 30)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return PaymentPage();
                            }));
                          },
                          child: Container(
                            width: width - 70,
                            height: 50,
                            color: Colors.red,
                            child: Center(
                              child: Text('Make Order'),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  Counter();
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (counter > 1) {
                  counter--;
                }
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.red,
                child: IconButton(
                  icon: Icon(Icons.minimize),
                  onPressed: () {
                    if (counter > 1) {
                      counter--;
                    }
                    setState(() {});
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              width: 50,
              color: Colors.white,
              child: Center(child: Text(counter.toString())),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (counter > 1) {
                  counter++;
                  print(counter);
                }
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.green,
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // if (counter > 1) {
                    counter++;
                    // }
                    setState(() {});
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
