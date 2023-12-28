import 'package:first_test_app/ui_helper/util.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
          textTheme: const TextTheme(
              displayLarge:
                  TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              titleMedium:
                  TextStyle(fontSize: 11, fontWeight: FontWeight.w500))),
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
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("First Flutter App1"),
        ),
        body: Center(
          child: Container(
              width: 200,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Current time is: ${DateFormat('Hms').format(time)}'),
                  Text(
                      'Current time is Am/pm: ${DateFormat('jms').format(time)}'),
                  Text(
                      'Current time is Am/pm: ${DateFormat('yMMMd').format(time)}'),
                  Text(
                      'Current time is Weekday: ${DateFormat('EEEE').format(time)}'),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text("Current time"))
                ],
              )),
        ));
  }
}
