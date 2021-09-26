import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String webUrl;
  const SocialButton(this.icon, this.webUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.all(3),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          html.window.open(webUrl, 'xxxxxx');
        },
        hoverElevation: 20,
        elevation: 10,
        focusElevation: 0,
        child: Padding(
            padding: const EdgeInsets.all(5), child: SvgPicture.asset(icon)),
      ),
    );
  }
}
