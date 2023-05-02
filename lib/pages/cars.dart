import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageCars extends StatefulWidget {
  const PageCars({super.key});

  @override
  State<PageCars> createState() => _PageCarsState();
}

class _PageCarsState extends State<PageCars> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("cars"),
    );
  }
}
