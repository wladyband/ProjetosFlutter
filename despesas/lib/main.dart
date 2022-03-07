import 'package:flutter/material.dart';

import '/ui/components/components.dart';
main() => runApp(DespesasApp());


class DespesasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber
      ),
    );
  }
}


