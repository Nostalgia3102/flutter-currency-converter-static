// import 'package:currency_converter/currency_converter_material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//example of relative importing :
import './currency_converter_material.dart';

void main(){
  runApp(const MyApp());
}

/**
 * *Types of Widgets :
 * 1. Stateless Widget
 * 2. Stateful Widget
 * 3. Inherited Widget
 */

/*
* #Two main types of designing are:
* 1. Material Design - Google
* 2. Cupertino Design - Apple
* */

// Use Ctrl + Space -> for suggestions in Android Studio.

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:CurrencyConverterMaterialPagee(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home:CurrencyConverterMaterialPagee(),
    );
  }
}

