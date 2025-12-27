import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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

  @override
  Widget build(BuildContext context) {
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
          //   CupertinoButton(
          //   onPressed: () {},
          //   color: Colors.blue,
          //   child: const Text('Cupertino Button'),
          // ),
            // const Image(image: AssetImage("images/phil-harvey-M3g33c6jVZ8-unsplash.jpg")),
            SizedBox(
              width: 200,
              height: 320,
              child: Image.asset(
                "images/phil-harvey-M3g33c6jVZ8-unsplash.jpg",
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
            // Image.network(
            //     "https://images.unsplash.com/photo-1766221072212-cf2f9383221c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fHw%3D",
            //   height: 100,
            //   width: 200,
            // ),
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
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
