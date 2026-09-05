import 'package:church_eden_mob/feature/auth/presentation/widget/nearby_church_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FindYourChurchPage extends HookWidget {
  const FindYourChurchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E8),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            CircleAvatar(
              radius: 42,

              backgroundColor: Color(0xFFB8860B),

              child: CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFFF5F0E8),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: SvgPicture.asset(
                    "assets/Images/church-stroke.svg",
                    colorFilter: const ColorFilter.mode(Color(0xFFB8860B), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Find your church',
              style: GoogleFonts.playfair(fontWeight: .bold, fontSize: 44),
            ),
            Text(
              "Search for your church below to get started ",
              style: GoogleFonts.inter(fontSize: 15),
            ),
            Text("or request to join.", style: GoogleFonts.inter(fontSize: 15)),
            SizedBox(height: 22),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SearchBar(
                padding: WidgetStatePropertyAll(.symmetric(horizontal: 22)),
                leading: SvgPicture.asset('assets/Images/search.svg'),
                trailing: [
                  SvgPicture.asset('assets/Images/horizontal-stroke.svg'),
                ],
                hintText: 'Search by Church name',
                hintStyle: WidgetStatePropertyAll(
                  GoogleFonts.inter(color: Colors.grey),
                ),
                elevation: WidgetStatePropertyAll(0),
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: .circular(20)),
                ),
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    'Available Churches',
                    style: GoogleFonts.inter(fontWeight: .bold, fontSize: 20),
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      SizedBox(
                        height: 15,
                        child: SvgPicture.asset('assets/Images/location.svg'),
                      ),
                      Text(
                        'Accra,Ghana',
                        style: GoogleFonts.inter(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            NearbyChurchTile(
              title: 'Revival Chapel',
              subtitle: 'Accra,Gh',
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xFFB8860B),
                size: 18,
              ),
              leading: 'assets/Images/church-stroke.svg',
              isSecond: false,
            ),
            SizedBox(height: 22),
            NearbyChurchTile(
              title: "Can't find your Church ?",
              subtitle: 'Request to add your Church to ChurchEden',
              trailing: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: .circular(10),
                    side: const BorderSide(color: Color(0xFFB8860B)),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Request Church',
                  style: GoogleFonts.inter(
                    color: Color(0xFFB8860B),
                    fontWeight: .bold,
                  ),
                ),
              ),
              leading: 'assets/Images/church-stroke.svg',
              isSecond: true,
            ),
            SizedBox(height: 22),
            Row(
              spacing: 10,
              mainAxisAlignment: .center,
              children: [
                SvgPicture.asset('assets/Images/lock.svg'),
                Text('Secure and private'),
              ],
            ),
            SizedBox(height: 90),
          ],
        ),
      ),
    );
  }
}
