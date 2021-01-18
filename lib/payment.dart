import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
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
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text('Confirmed'),
                              ],
                            ),
                            index != 4
                                ? Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 50,
                                      width: 2,
                                      color: Colors.grey,
                                    ),
                                  )
                                : Container(),
                          ],
                        );
                      },
                      itemCount: 5),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
