import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/Assets.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'Powered by', style: Theme.of(context).textTheme.subtitle2),
          TextSpan(
              text: ' Flutter',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontWeight: FontWeight.w600)),
          WidgetSpan(
              child: Container(
            margin: const EdgeInsets.only(top: 10),
            width: 15,
            height: 15,
            child: SvgPicture.asset(Assets.flutter),
          )),
        ]));
  }
}
