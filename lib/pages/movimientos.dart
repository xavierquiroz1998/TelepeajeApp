import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageMovimiento extends StatefulWidget {
  const PageMovimiento({super.key});

  @override
  State<PageMovimiento> createState() => _PageMovimientoState();
}

class _PageMovimientoState extends State<PageMovimiento> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("movimiento"),
    );
  }
}
