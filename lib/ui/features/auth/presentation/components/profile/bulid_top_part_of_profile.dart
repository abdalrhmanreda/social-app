import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/generated/assets.dart';

Column buildTopPartOfProfileScreen(BuildContext context) {
  return Column(
    children: [
      CircleAvatar(
        radius: 64,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: const CircleAvatar(
          backgroundImage: AssetImage(
            Assets.authSignIn,
          ),
          radius: 60.0,
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 50,
      ),
      Text(
        'Abdalrhman Reda',
        style: GoogleFonts.aBeeZee(
          fontSize: 17,
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 90,
      ),
      Text(
        'Flutter Developer',
        style: Theme.of(context).textTheme.caption,
      ),
      SizedBox(
        height: 5.h,
      ),
    ],
  );
}
