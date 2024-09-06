import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widgets Demo',
      home: MyHomePage(title: 'Widgets Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              Image.network('https://picsum.photos/200/200'),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Notifications  '),
                  Switch(
                      value: value,
                      onChanged: (newValue) {
                        setState(() {
                          value = newValue;
                        });
                      }),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
