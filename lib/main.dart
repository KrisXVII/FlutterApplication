import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.orange)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        // leading: Icon(Icons.offline_bolt),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        // value from MyHomePage set in App.build
        // centerTitle: true, // Center the title
        actions: [
          Icon(Icons.abc),
          IconButton(
            onPressed: () => print("deprint"),
            icon: const Icon(Icons.access_alarm),
          ),
        ],
        // foregroundColor: Colors.red,
        elevation: 50,
        // systemOverlayStyle: SystemUiOverlayStyle.light, // dark or light mode
        shadowColor: Colors.orange,
        toolbarHeight: 100,
        // height of the component
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ), // Change text style
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: .center,
          children: [
            TextButton(onPressed: () {}, child: const Text("Holy shi")),
            TextButton.icon(
              onPressed: () {},
              label: const Text("Africa"),
              icon: const Icon(Icons.airplane_ticket),
            ),
            ElevatedButton(
              onPressed: () {},
              // style: ButtonStyle( // uses state buttons
              //   overlayColor: WidgetStateProperty.resolveWith((states) {
              //     if (states.contains(WidgetState.focused)) {
              //       return Colors.lime;
              //     } else if (states.contains(WidgetState.hovered)) {
              //       return Colors.tealAccent;
              //     } else if (states.contains(WidgetState.pressed)) {
              //       return Colors.yellow;
              //     } else {
              //       return Colors.teal;
              //     }
              //   }),
              // ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25)
              ),
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Grab a snickers"),
            ),
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
