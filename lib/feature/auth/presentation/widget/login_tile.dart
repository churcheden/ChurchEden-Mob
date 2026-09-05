import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTile extends StatelessWidget {
  final String title, subtitle;
  final String assetName;

  const LoginTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color(0xFFDCEEE1),
        child: SvgPicture.asset(assetName ,),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      titleTextStyle: GoogleFonts.inter(fontWeight: .bold, color: Colors.black),
      subtitleTextStyle: GoogleFonts.inter(color: Colors.grey),
    );
  }
}
