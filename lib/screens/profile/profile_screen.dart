import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_shi_pu/constants.dart';
import 'package:ui_shi_pu/size_config.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KprimaryColor,
        leading: SizedBox(),
        centerTitle: true,
        actions: [],
      ),
      body: Column(
        children: [
          info(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/bookmark_fill.svg'),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Svae resadsa',
                  style: TextStyle(fontSize: 16, color: KTextLightColor),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class info extends StatelessWidget {
  const info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: 150,
              color: KprimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 8),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/pic.png'))),
                ),
                Text(
                  'Jhon Doe',
                  style: TextStyle(fontSize: 22, color: KTextColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'jowecakasd01@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8494a2),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  //裁剪为一个椭圆
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    double height = size.height;
    double width = size.width;
    path
      ..lineTo(0, height - 100)
      ..quadraticBezierTo(width / 2, height, width, height - 100)
      ..lineTo(width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
