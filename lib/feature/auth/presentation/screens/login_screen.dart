import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("ChurchEden",style:GoogleFonts.inter(),),
          Row(children: [Text('FAITH.'), Text('PEOPLE.'), Text('PURPOSE.')]),
        ],
      ),
    );
  }
}
