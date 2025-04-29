import 'package:flutter/material.dart';

//! AboutDialog

class V1 extends StatefulWidget {
  const V1({Key? key}) : super(key: key);

  @override
  State<V1> createState() => V1State();
}

class V1State extends State<V1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text(
          'Video 2',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('Show About Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationLegalese: 'Legalese',
                    applicationName: 'Flutter App',
                    applicationVersion: 'version 1.0.0',
                    children: [
                      Text('This is a text created by Flutter Mapp'),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
