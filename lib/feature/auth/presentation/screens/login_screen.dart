import 'package:church_eden_mob/feature/auth/presentation/widget/google_button.dart';
import 'package:church_eden_mob/feature/auth/presentation/widget/login_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/Images/eden.png',width: 100,height:100,),
            Text("ChurchEden", style: GoogleFonts.inter(fontWeight: .bold)),
            Row(
              mainAxisAlignment: .center,
              spacing: 2,
              children: [
                Text('FAITH.', style: GoogleFonts.inter(color: Colors.amber)),
                Text('PEOPLE.', style: GoogleFonts.inter(color: Colors.amber)),
                Text('PURPOSE.', style: GoogleFonts.inter(color: Colors.amber)),
              ],
            ),
            Text(
              'welcome to ChurchEden',
              style: GoogleFonts.inter(fontWeight: .bold),
            ),
            GoogleButton(),
            Text(
              'Sign in or create your account to get started',
              style: GoogleFonts.inter(),
            ),

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
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'By continuing you agree to our',
                  style: GoogleFonts.inter(),
                  children: [
                    TextSpan(
                      text: 'Terms Of Service',
                      style: GoogleFonts.inter(color: Colors.amber),
                    ),
                    TextSpan(text: 'and',style: GoogleFonts.inter()),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: GoogleFonts.inter(color: Colors.amber),
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
