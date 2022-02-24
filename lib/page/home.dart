import 'package:flutter/material.dart';
// import 'package:absenn/page/absen.dart';
// import 'package:absenn/page/ijin.dart';
import 'package:absenn/page/profillist.dart';
import 'package:absenn/page/riwayat.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _list = <Widget>[
    BodyAbsen(),
    RiwayatPage(),
    ProfileList(),
  ];

  void _onTap(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(34, 87, 126, 1),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 33),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open_outlined, size: 33),
            title: Text('Riwayat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, size: 33),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
        elevation: 1,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class BodyAbsen extends StatefulWidget {
  BodyAbsen({Key? key}) : super(key: key);

  @override
  State<BodyAbsen> createState() => _BodyAbsenState();
}

class _BodyAbsenState extends State<BodyAbsen> {
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
