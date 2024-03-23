import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/home/components/body.dart';
import 'package:plant_app/screens/home/components/my_bottom_nav_bar.dart';

import '../../constants.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset("lib/icons/menu.svg")));
    return Scaffold(
      appBar: appBar,
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
