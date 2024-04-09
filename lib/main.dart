import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'First Portfolio Exam'),
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
        backgroundColor: Color.fromARGB(255, 0, 44, 177),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Navigate to the home screen
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.all(10.0),
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: const Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(
                            255, 42, 42, 42), // Left rectangle color
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: const Text(
                          'TAMK',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                    height: 250,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                          255, 104, 103, 103), // Middle rectangle color
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Center(
                      child: const Text(
                        'Flutter!',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                          255, 136, 136, 136), // Right rectangle color
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        'Thws',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              padding: const EdgeInsets.all(10.0),
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color:
                    Color.fromARGB(255, 0, 44, 177), // Bottom rectangle color
                border: Border.all(
                    color: const Color.fromARGB(255, 105, 105, 105), width: 2),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Image.asset('assets/images/Logo.png',
                  fit: BoxFit
                      .cover), // Stellen Sie sicher, dass das Bild den Container füllt
            ),
          ],
        ),
      ),
    );
  }
}
