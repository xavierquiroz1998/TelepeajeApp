import 'dart:math';

import 'package:flutter/material.dart';
import 'package:telepeaje_app/pages/cars.dart';
import 'package:telepeaje_app/pages/movimientos.dart';
import 'package:telepeaje_app/pages/principal.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  int selectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorSchema = Theme.of(context).colorScheme;

    final screen = [
      const PagePrincipal(),
      const PageCars(),
      const PageMovimiento()
    ];

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: colorCab,
      //   title: Text(
      //     "Hola XAVIER",
      //     style: styteText(20, colorText),
      //   ),
      // ),
      body: screen[selectionIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectionIndex,
        onTap: (value) {
          setState(() {
            selectionIndex = value;
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Resumen",
            backgroundColor: colorSchema.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_eta_outlined),
            activeIcon: Icon(Icons.drive_eta_sharp),
            label: "Vehiculos",
            backgroundColor: colorSchema.tertiary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            activeIcon: Icon(Icons.description),
            label: "Vehiculos",
            backgroundColor: colorSchema.tertiary,
          ),
        ],
      ),
    );
  }
}
