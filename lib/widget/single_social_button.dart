import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleSocialButton extends StatelessWidget {
  final String title;
  final String icon;
  final Function function;

  const SingleSocialButton(this.title, this.icon, this.function, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Container(
          alignment: Alignment.center,
          height: 30,
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icon),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: GoogleFonts.roboto(fontSize: 12),
              )
            ],
          ),
        ),
        onPressed: () => function(),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ));
  }
}
