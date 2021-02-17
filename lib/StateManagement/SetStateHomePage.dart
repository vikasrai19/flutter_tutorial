import 'package:flutter/material.dart';

class SetStateHomePage extends StatefulWidget {
  @override
  _SetStateHomePageState createState() => _SetStateHomePageState();
}

class _SetStateHomePageState extends State<SetStateHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Set State Tutorial"),
      ),
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "The value of the counter is ",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10.0),
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            child: Icon(Icons.close, color: Colors.white),
          ),
          SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter -= 1;
              });
            },
            child: Icon(Icons.remove, color: Colors.white),
          ),
          SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter += 1;
              }); // counter = counter + 1
              print("Increment button tapped");
              print(counter.toString());
            },
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
