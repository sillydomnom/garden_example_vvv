import 'package:flutter/material.dart';
import 'package:garden_test/services/plant_service.dart';
import 'package:garden_test/widgets/combined_button.dart';
import 'package:garden_test/widgets/plant_list.dart';
import 'package:provider/provider.dart';

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
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: Provider(
        create: (context) => PlantService()..init(),
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times: Like this',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: _incrementCounter, child: const Icon(Icons.add)),
                  const Padding(padding: EdgeInsets.only(left: 8, right: 8)),
                  ElevatedButton(onPressed: _decrementCounter, child: const Icon(Icons.remove))
                ],
              ),
            ),
            const CombindedButton(
              icon: Icons.abc,
              text: 'test',
            ),
            const CombindedButton(
              icon: Icons.remove,
              text: "Hello",
            ),
            const Divider(),
            PlantList(),
          ],
        ),
      ),
    );
  }
}
