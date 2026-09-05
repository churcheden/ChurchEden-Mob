import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleButton extends StatelessWidget {
  final void Function()? onPressed;

  const GoogleButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return SizedBox(
      height:height*0.07,
      width:width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(backgroundColor: Colors.white,),
          child: Row(
            spacing: 10,
            mainAxisAlignment: .center,
            children: [
              SvgPicture.asset(
                'assets/Images/icons8-google.svg',
                width: 22,
                height: 22,
              ),
              Text(
                'Continue With Google',
                style: GoogleFonts.inter(fontWeight: .bold, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
