
import 'package:flutter/material.dart';
import 'package:foodhub/src/common/extensions/size_config_extension/size_config.dart';
import 'package:foodhub/src/common/managers/asset_manager/asset_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/routes/routess/app_routes.dart';
import '../../widgets/custom_button.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: 390.width(),
        height: 798.height(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 500.height(),
              width: 390.width(),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  
                  image: AssetImage(AssetManager.food1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 400.height(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Food so good, \nyour taste buds\n will love it.",
                    style: GoogleFonts.sora(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.height(),
                  ),
                  Text(
                    "The best spices, the finest roast, \n the powerful flavor.",
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFA9A9A9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.height(),
                  ),
                  SizedBox(
                    height: 65.height(),
                    width: 350.width(),
                    child: CustomButton(
                      title: 'Get Started',
                      onPressed: () => Navigator.pushNamed(
                        context,
                        Routes.home,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.height(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
