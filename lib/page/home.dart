import 'package:absenn/page/absen.dart';
import 'package:absenn/page/absenpulang.dart';
import 'package:absenn/page/ijin.dart';
import 'package:flutter/material.dart';

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
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          'Home',
          style: TextStyle(
              color: Color.fromRGBO(34, 87, 126, 1),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  width: MediaQuery.of(context).size.width,
                  height: 338,
                  margin: EdgeInsets.only(bottom: 12),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    //  width: SizeConfig.screenWidth * 0.78,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromRGBO(85, 132, 172, 1),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Sonia Curtis",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text("Are You absent Today?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          Container(
                              margin: EdgeInsets.only(left: 90),
                              child: Image.asset("assets/images/home.png"))
                        ],
                      ),
                    ),
                  )),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                      child: SizedBox(
                        width: 370.0,
                        height: 50.0,
                        child: RaisedButton(
                          child: Text(
                            "Check In",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          color: Color.fromRGBO(34, 87, 126, 1),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AbsenPage(),
                            ));
                            // onTap
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      child: SizedBox(
                        width: 370.0,
                        height: 50.0,
                        child: RaisedButton(
                          child: Text(
                            "Check Out",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          color: Color.fromRGBO(85, 132, 172, 1),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AbsenPulang(),
                            ));
                            // onTap
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                      child: SizedBox(
                        width: 300.0,
                        height: 50.0,
                        child: RaisedButton(
                          child: Text(
                            "Izin",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          color: Color.fromRGBO(34, 87, 126, 1),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => IzinPage(),
                            ));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
