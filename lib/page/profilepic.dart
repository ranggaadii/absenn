import 'package:flutter/material.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/userpic1.png"),
          ),
          Positioned(
            right: 3,
            bottom: -5,
            child: SizedBox(
              height: 46,
              width: 46,
              child: FlatButton(
                color: Colors.transparent,
                onPressed: () {},
                child: Icon(
                  Icons.add_a_photo_outlined,
                  color: Color.fromRGBO(34, 87, 126, 1),
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
