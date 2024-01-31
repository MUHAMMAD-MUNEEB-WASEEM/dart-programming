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
        body: Container(
          child: Column(children: [
            Expanded(
                flex: 2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: SizedBox(
                          width: 100,
                          child: CircleAvatar(backgroundColor: Colors.green),
                        )))),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.blue,
                  child: ListView.builder(
                      itemBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.all(11.0),
                          child: ListTile(
                            leading: CircleAvatar(backgroundColor: Colors.red),
                            title: Text('Name'),
                            subtitle: Text('Mob No'),
                            trailing: Icon(Icons.verified_user),
                          ))),
                )),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      10, // Make sure to replace `itemCount` with the actual number of items
                  itemBuilder: (context, index) => Padding(
                    padding:
                        const EdgeInsets.all(8.0), // Adjust padding as needed
                    child: SizedBox(
                      width: 200, // Adjust width as needed
                      height: 50, // Adjust height as needed
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(flex: 2, child: Container(color: Colors.yellow)),
          ]),
        ));
  }
}
