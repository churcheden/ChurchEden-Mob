import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindYourChurchPage extends HookWidget {
  const FindYourChurchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E8),
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset("assets/Images/church-stroke.svg"),
            ),
            Text('Find your church'),
            Text(
              'Search for your church below to get started or request to join',
            ),

            SearchBar(
              leading: SvgPicture.asset('assets/Images/search.svg'),
              trailing: [

                SvgPicture.asset('assets/Images/horizontal-stroke.svg',),
              ],
              hintText: 'Search by Church name',
              elevation: WidgetStatePropertyAll(0),
              backgroundColor: WidgetStatePropertyAll(Colors.white),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: .circular(20)),
              ),
            ),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('Nearby Churches'),
                Row(
                  children: [
                    SvgPicture.asset('assets/Images/location.svg'),
                    Text('Accra,Ghana'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
