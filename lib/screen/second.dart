import 'package:app_new/screen/first.dart';
import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("2nd Appbar"),
        ),
        body: Column(
          children: [
            Text("No data found"),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.pop(
                    context, MaterialPageRoute(builder: (context) => first()));
              },
              child: Text('Go back'),
            ),
          ],
        ));
  }
}
