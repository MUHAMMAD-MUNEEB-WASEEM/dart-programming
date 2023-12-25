import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("First Flutter App1"),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Text("One", style: TextStyle(fontWeight: FontWeight.w700)),
                Text("Two", style: TextStyle(fontWeight: FontWeight.w700)),
                Text("Three", style: TextStyle(fontWeight: FontWeight.w700)),
                Text("Four", style: TextStyle(fontWeight: FontWeight.w700)),
                Text("Five", style: TextStyle(fontWeight: FontWeight.w700)),
                Text("Six", style: TextStyle(fontWeight: FontWeight.w700)),
              ],
            )));
  }
}
