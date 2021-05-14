import 'package:flutter/material.dart';
import 'test_text.dart';
import 'package:theta_connection/theta_connection.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      var response = hello();
                      print(response);
                    },
                    child: Text(
                      'hello',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      var response = await testNetwork();
                      print(response);
                    },
                    child: Text(
                      'test network',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.lightBlue[100],
                child: SingleChildScrollView(
                  child: Text(
                    testText,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
