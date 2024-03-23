// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_cart.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2),
      child: Expanded(
        child: SizedBox(
          height: size.height * 0.77,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding * 0.3,
                    horizontal: kDefaultPadding / 2,
                  ),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding:
                              const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.8),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset("lib/icons/back_arrow.svg"),
                        ),
                      ),
                      const IconCard(icon: "lib/icons/sun.svg"),
                      const IconCard(icon: "lib/icons/icon_2.svg"),
                      const IconCard(icon: "lib/icons/icon_3.svg"),
                      const IconCard(icon: "lib/icons/icon_4.svg"),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.80,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29),
                    ),
                  ],
                  image: const DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage("lib/images/img.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
