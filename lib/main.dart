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
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          Container(
                            width: 600,
                            height: 100,
                            color: Colors.red,
                            margin: EdgeInsets.only(right: 10),
                          ),
                          Container(
                            width: 600,
                            height: 100,
                            color: Colors.yellow,
                            margin: EdgeInsets.only(right: 10),
                          ),
                          Container(
                            width: 600,
                            height: 100,
                            color: Colors.green,
                            margin: EdgeInsets.only(right: 10),
                          ),
                          Container(
                            width: 600,
                            height: 100,
                            color: Colors.blue,
                            margin: EdgeInsets.only(right: 10),
                          ),
                        ]))),
                Container(
                  height: 100,
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                  margin: EdgeInsets.only(bottom: 10),
                ),
              ],
            ))));
  }
}
