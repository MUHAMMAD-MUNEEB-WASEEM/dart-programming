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
    var arrNames = ['muneeb', 'hammad', 'josh', 'john', 'doe'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("First Flutter App1"),
        ),
        body: Row(
          children: [
            Container(
              width: 150,
              height: 250,
              color: Colors.lightBlue,
            ),
            Expanded(
                child: Container(
              width: 150,
              height: 250,
              color: Colors.lightGreen,
            )),
            Expanded(
              child: Container(
                width: 150,
                height: 250,
                color: Colors.redAccent,
              ),
            ),
            Container(
              width: 150,
              height: 250,
              color: Colors.yellowAccent,
            )
          ],
        ));
  }
}
