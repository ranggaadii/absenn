import 'package:flutter/material.dart';

class RiwayatPage extends StatefulWidget {
  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Riwayat"),
        centerTitle: true,
      ),
      body: Center(),
    );
  }
}
