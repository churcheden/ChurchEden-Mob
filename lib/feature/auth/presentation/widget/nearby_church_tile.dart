import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NearbyChurchTile extends StatelessWidget {
  final String title, subtitle;
  final Widget trailing;
  final String leading;
  final bool isSecond;

  const NearbyChurchTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.leading,
    required this.isSecond,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    return SizedBox(
      height: height * 0.13,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          leading: !isSecond
              ? Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
              shape: .rectangle,
              color: const Color(0xFF1B2A41),
              borderRadius: .circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(leading,
                  colorFilter: const ColorFilter.mode(
                      Colors.white, BlendMode.srcIn), ),
            ),
          )
              : CircleAvatar(
            radius: 22,

            backgroundColor: Color(0xFFB8860B),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0xFFF5F0E8),
              child: SvgPicture.asset(leading,
                colorFilter: const ColorFilter.mode(
                    Color(0xFFB8860B), BlendMode.srcIn),),
            ),
          ),
          tileColor: !isSecond ? Colors.white : const Color(0xFFF5F0E8),
          trailing: trailing,
          title: Text(title),
          subtitle: Text(subtitle),
          titleTextStyle: GoogleFonts.inter(
            color: Colors.black,
            fontWeight: .bold,
            fontSize: 22,
          ),
          subtitleTextStyle: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 12,
          ),
          shape: !isSecond
              ? RoundedRectangleBorder(borderRadius: .circular(22))
              : RoundedRectangleBorder(
            borderRadius: .circular(22),
            side: BorderSide(color: Color(0xFFB8860B)),
          ),
        ),
      ),
    );
  }
}
