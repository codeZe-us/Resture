import 'package:flutter/material.dart';
import 'package:foodhub/src/common/extensions/size_config_extension/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/managers/asset_manager/asset_manager.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 798.height(),
            width: 390.width(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetManager.maps),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 
                SizedBox(
                  width: 315.width(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 44.width(),
                        height: 44.height(),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.chevron_left),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      Container(
                        width: 44.width(),
                        height: 44.height(),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: IconButton(
                          icon: const Icon(Iconsax.gps),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                //  SizedBox(
                //   height: 200.height(),
                // ),
                Container(
                  height: 380.height(),
                  width: 375.width(),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: [
                      Container(
                        height: 5.height(),
                        width: 44.width(),
                        decoration: BoxDecoration(
                          color: const Color(0xffEAEAEA),
                          borderRadius: BorderRadius.circular(2.5),
                        ),
                        margin:  EdgeInsets.only(
                          top: 15.height(),
                          bottom: 15.height(),
                        ),
                      ),
                      Text(
                        "10 minutes left",
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        height: 10.height(),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Delivery to ",
                          style: GoogleFonts.sora(
                            color: Color(0xff808080),
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: "Favour",
                              style: GoogleFonts.sora(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                       SizedBox(
                        height: 20.height(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 4.height(),
                            width: 80.width(),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                           SizedBox(
                            width: 5.width(),
                          ),
                          Container(
                            height: 4,
                            width: 80.width(),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                           SizedBox(
                            width: 5.width(),
                          ),
                          Container(
                            height: 4.height(),
                            width: 80.width(),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                           SizedBox(
                            width: 5.width(),
                          ),
                          Container(
                            height: 4.height(),
                            width: 80.width(),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.height(),
                      ),
                      Container(
                        width: 350.width(),
                        height: 100.height(),
                        padding: EdgeInsets.only(
                          left: 10.width(),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orange,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 62.width(),
                              height: 62.height(),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.orange,
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: const Icon(
                                Icons.directions_bike_rounded,
                                color: Color(0xffC67C4E),
                              ),
                            ),
                             SizedBox(
                              width: 12.width(),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Delivered your order",
                                  style: GoogleFonts.sora(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff303336),
                                  ),
                                ),
                                Text(
                                  "We deliver your goods to you in \nthe shortes possible time.",
                                  style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff808080),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50.height(),
                      ),
                      SizedBox(
                        width: 315.width(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60.height(),
                                  width: 30.width(),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Image.asset(
                                    AssetManager.zeus,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                 SizedBox(
                                  width: 12.width(),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Favour",
                                      style: GoogleFonts.sora(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff303336),
                                      ),
                                    ),
                                    Text(
                                      "Personal Courier",
                                      style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff808080),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              width: 54.width(),
                              height: 54.height(),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xffDEDEDE),
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: const Icon(
                                Iconsax.call_calling5,
                                color: Color(0xff808080),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
