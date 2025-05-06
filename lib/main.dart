import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildInfoRow(),
            SizedBox(height: 20),
            buildImageStack(),
          ],
        ),
      ),
    );
  }

  // هذا هو الـ Row المرتب
  Widget buildInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.favorite, color: Colors.red),
            Text("Likes"),
          ],
        ),
        Column(
          children: [
            Icon(Icons.comment, color: Colors.blue),
            Text("Comments"),
          ],
        ),
        Column(
          children: [
            Icon(Icons.share, color: Colors.green),
            Text("Shares"),
          ],
        ),
      ],
    );
  }

  // هذا هو الـ Stack المرتب
  Widget buildImageStack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Icon(Icons.settings, color: Colors.black),
        ),
        Text(
          "Welcome!",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}