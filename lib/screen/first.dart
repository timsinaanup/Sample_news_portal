import 'package:app_new/screen/second.dart';
import 'package:flutter/material.dart';

class first extends StatelessWidget {
  var appBar;

  first({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Image.network(
                  'https://www.onlinekhabar.com/wp-content/uploads/2021/12/sher-Bahasur-deuba.jpg')),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500),
              ),
              Text(
                'Phone',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
              Text(
                'Email',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => second()));
                },
                child: Text('View More'),
              )
            ],
          )),
        ],
      ),
    );
  }
}
