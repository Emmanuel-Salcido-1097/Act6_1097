import 'package:flutter/material.dart';
import 'package:emmanuel_videos_211/Pag.Inicial.dart';
import 'package:emmanuel_videos_211/V1.dart';
import 'package:emmanuel_videos_211/V2.dart';
import 'package:emmanuel_videos_211/V3.dart';
import 'package:emmanuel_videos_211/V4.dart';
import 'package:emmanuel_videos_211/V5.dart';
import 'package:emmanuel_videos_211/V6.dart';
import 'package:emmanuel_videos_211/V7.dart';
import 'package:emmanuel_videos_211/V8.dart';
import 'package:emmanuel_videos_211/V9.dart';
import 'package:emmanuel_videos_211/V10.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rutas entre paginas",
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PagInicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/v1': (context) => const V1(),
        '/v2': (context) => const V2(),
        '/v3': (context) => const V3(),
        '/v4': (context) => const V4(),
        '/v5': (context) => const V5(),
        '/v6': (context) => const V6(),
        '/v7': (context) => const V7(),
        '/v8': (context) => const V8(),
        '/v9': (context) => const V9(),
        '/v10': (context) => const V10(),
      },
    );
  }
}
