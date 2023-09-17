import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_shi_pu/screens/home/compoents/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: home_app_bar(),
      body: Body(),
    );
  }

  AppBar home_app_bar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      title: Image.asset('assets/images/logo.png'),
      actions: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset('assets/icons/search.svg'))
      ],
    );
  }
}
