import 'package:church_eden_mob/feature/auth/presentation/widget/google_button.dart';
import 'package:church_eden_mob/feature/auth/presentation/widget/login_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E8),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Image.asset('assets/Images/eden.png', width: 200, height: 200),
            Text(
              "ChurchEden",
              style: GoogleFonts.playfair(fontWeight: .bold, fontSize: 44),
            ),
            Row(
              mainAxisAlignment: .center,
              spacing: 10,
              children: [
                Text(
                  'FAITH.',
                  style: GoogleFonts.inter(color: Color(0xFFB8860B),fontWeight: .bold),
                ),
                Text(
                  'PEOPLE.',
                  style: GoogleFonts.inter(color: Color(0xFFB8860B),fontWeight: .bold),
                ),
                Text(
                  'PURPOSE.',
                  style: GoogleFonts.inter(color: Color(0xFFB8860B),fontWeight: .bold),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              'welcome to ChurchEden',
              style: GoogleFonts.playfair(fontWeight: .bold, fontSize: 33),
            ),
            Text(
              'Sign in or create your account to get started',
              style: GoogleFonts.inter(color: Colors.grey),
            ),
            SizedBox(height: 15),
            GoogleButton(),
            SizedBox(height: 15),
            LoginTile(
              title: 'Secure & private',
              subtitle: 'your information is safe with us.',
              assetName: 'assets/Images/security.svg',
            ),
            LoginTile(
              title: 'Access your church',
              subtitle: 'connect with your church community.',
              assetName: 'assets/Images/user.svg',
            ),
            LoginTile(
              title: 'Quick & easy',
              subtitle: 'Join and get started.',
              assetName: 'assets/Images/clock.svg',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: RichText(
                text: TextSpan(
                  text: 'By continuing, you agree to our',
                  style: GoogleFonts.inter(fontSize: 10, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: ' Terms Of Service ',
                      style: GoogleFonts.inter(color: Color(0xFFB8860B)),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: GoogleFonts.inter(color: Colors.grey),
                    ),
                    TextSpan(
                      text: ' Privacy Policy . ',
                      style: GoogleFonts.inter(color: Color(0xFFB8860B)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
