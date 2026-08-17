import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Flutter!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'This is an Example of a simple Flutter app using Various widgets',
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.red),
                SizedBox(width: 10),
                Text('This is a row with icon and text'),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'This is a container with padding, decoration and rounded corners.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (content) {
                    return AlertDialog(
                      title: Text('Alert'),
                      content: Text(
                        'This is an alert Triggered by a button',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(content).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Show Alert Dialog'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Center(
                child: Text(
                  'This is a centered and space above is Expanded to fill the available space.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
