import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uis/pages/cources.page.dart';
import 'package:uis/pages/e_com.home.page.dart';
import 'package:uis/pages/e_com_cart.page.dart';
import 'package:uis/pages/ev_onoarding.page.dart';
import 'package:uis/pages/expense.page.dart';
import 'package:uis/pages/expenses.ui.dart';
import 'package:uis/pages/fashion_onboarding.page.dart';
import 'package:uis/pages/find_cottage.page.dart';
import 'package:uis/pages/fitness.page.dart';
import 'package:uis/pages/freelance_tracker_app.page.dart';
import 'package:uis/pages/home_appliances.page.dart';
import 'package:uis/pages/home_hub.page.dart';
import 'package:uis/pages/homely.page.dart';
import 'package:uis/pages/job_search.page.dart';
import 'package:uis/pages/job_search2.page.dart';
import 'package:uis/pages/news.page.dart';
import 'package:uis/pages/nft_page.dart';
import 'package:uis/pages/nfts.page.dart';
import 'package:uis/pages/onboarding_.page.dart';
import 'package:uis/pages/online_education_app.page.dart';
import 'package:uis/pages/social_media.page.dart';
import 'package:uis/pages/spotify_img_generator.page.dart';
import 'package:uis/pages/todo.page.dart';
import 'package:uis/pages/todo1.page.dart';
import 'package:uis/pages/zara.page.dart';

// NOTE : THIS  FILE KEEP CHANGING AS PER THE `UI` DO CHECK BEOFRE YOU USE

void main() {
  runApp(const Uis());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF181818),
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent));
}

class Uis extends StatelessWidget {
  const Uis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: Colors.white),
      home: const CourcesPage(),
    );
  }
}
