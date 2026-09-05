import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NearbyChurchTile extends StatelessWidget {
  final String title, subtitle;
  final Widget trailing;
final String leading;
  const NearbyChurchTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing, required this.leading,
  });

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.09,
      child: ListTile(
        leading: SvgPicture.asset(leading),
        tileColor: Colors.white,
        trailing: trailing,
        title: Text(title),
        subtitle: Text(subtitle),
        titleTextStyle: GoogleFonts.inter(color: Colors.black,fontWeight: .bold,),
        subtitleTextStyle: GoogleFonts.inter(color: Colors.black),
        shape: RoundedRectangleBorder(borderRadius: .circular(22)),
      ),
    );
  }
}
