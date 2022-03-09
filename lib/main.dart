import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String texto = 'VAZIO';
  int count = 0;

  void decrement() {
    setState(() {
      count--;
      if (count == 0) {
        texto = 'VAZIO';
      } else {
        texto = 'PODE ENTRAR';
      }
    });
  }

  void increment() {
    setState(() {
      count++;
      if (count == 3) {
        texto = 'LOTADO';
      } else {
        texto = 'PODE ENTRAR';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              texto,
              style: TextStyle(
                fontSize: 44,
                color: count == 0 || count == 3 ? Colors.red : Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 120,
                  color: count == 0 || count == 3
                      ? Colors.redAccent
                      : Colors.green,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: count == 0 ? null : decrement,
                  style: TextButton.styleFrom(
                    fixedSize: const Size(100, 100),
                    backgroundColor: count == 0 ? Colors.blue : Colors.white,
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    count == 0 ? 'Vazio' : 'Saiu',
                    style: TextStyle(
                      color: count == 0 ? Colors.blue : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                TextButton(
                  onPressed: count == 3 ? null : increment,
                  style: TextButton.styleFrom(
                    fixedSize: const Size(100, 100),
                    backgroundColor: count == 3 ? Colors.blue : Colors.white,
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    count == 3 ? 'Lotado' : 'Entrou',
                    style: TextStyle(
                      color: count == 3 ? Colors.blue : Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
