import 'package:flutter/material.dart';

//! AnimatedCrossFade

class V9 extends StatefulWidget {
  const V9({Key? key}) : super(key: key);

  @override
  State<V9> createState() => V9State();
}

class V9State extends State<V9> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text(
          'Video 10',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              child: const Text(
                'Switch',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          AnimatedCrossFade(
            firstChild: Image.network(
              'https://raw.githubusercontent.com/Emmanuel-Salcido-1097/P8MisImagenes6I/refs/heads/main/agua.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            secondChild: Image.network(
              'https://raw.githubusercontent.com/Emmanuel-Salcido-1097/P8MisImagenes6I/refs/heads/main/oceano.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
