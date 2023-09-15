import 'package:flutter/material.dart';
import 'package:foodhub/src/common/extensions/size_config_extension/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/managers/asset_manager/asset_manager.dart';

class BannerCard extends StatefulWidget {
  const BannerCard({super.key});

  @override
  State<BannerCard> createState() => _BannerCardState();
}

class _BannerCardState extends State<BannerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.width(),
      height: 140.height(),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(AssetManager.banner2),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 26,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffED5151),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Promo",
                style: GoogleFonts.sora(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
