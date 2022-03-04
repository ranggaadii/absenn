import 'package:flutter/material.dart';

class RiwayatPage extends StatefulWidget {
  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context, false),
          color: Color.fromRGBO(34, 87, 126, 1),
        ),
        title: Text(
          'Riwayat',
          style: TextStyle(
              color: Color.fromRGBO(34, 87, 126, 1),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 12),
              child: Container(
                padding: EdgeInsets.all(16),
                //  width: SizeConfig.screenWidth * 0.78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromRGBO(85, 132, 172, 1),
                ),
                child: Row(children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "04",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 4),
                            Text(
                              "Senin",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[100]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Check In",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text("06.45", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    width: 0.5,
                    color: Colors.grey[200]!.withOpacity(0.7),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Check Out",
                            style: TextStyle(color: Colors.white)),
                        Text("06.45", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ]),
              ),
            );
          }),
    );
  }
}
