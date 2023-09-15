import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodhub/src/common/extensions/size_config_extension/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';


import '../../../common/routes/routess/app_routes.dart';
import '../../../data/model/product_model.dart';
import '../../Logic/Controller/controller.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/food_size.dart';
import '../home/home.dart';

class Detail extends StatefulWidget {
 

  const Detail({super.key, });

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int selectedSize = 1;
  

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness:
            Brightness.light, // Dark == white status bar -- for IOS.
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Color(0xff2F2D2C),
                      ),
                    ),
                    SizedBox(
                      width: 55.width(),
                    ),
                    Text(
                      'Detail',
                      style: GoogleFonts.sora(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 55.width(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.heart,
                        color: Color(0xff2F2D2C),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.height(),
              ),
              Container(
                width: 315.width(),
                height: 226.height(),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/item.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 20.height(),
              ),
              SizedBox(
                width: 315,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Item",
                      style: GoogleFonts.sora(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff2F2D2C)),
                    ),
                     SizedBox(
                      height: 8.height(),
                    ),
                   
                  ],
                ),
              ),
              SizedBox(
                width: 340.width(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 40.width(),
                          height: 40.height(),
                          child: const Icon(
                            Iconsax.star1,
                            color: Color(0xffFBBE21),
                          ),
                        ),
                        Text(
                          "4.8",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff2F2D2C),
                          ),
                        ),
                        SizedBox(
                          width: 10.width(),
                        ),
                        Text(
                          "(230)",
                          style: GoogleFonts.sora(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 315,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.010,
                    ),
                    Container(
                      height: 2,
                      decoration: const BoxDecoration(color: Color(0xffEAEAEA)),
                    ),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.010,
                        ),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text:
                                "A good food is a culinary creation that excels in taste, texture, and presentation... ",
                            style: GoogleFonts.sora(
                                color: const Color(0xff9B9B9B),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.64),
                            
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Size",
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CoffeeSize(
                              title: "S",
                              index: 0,
                              selectedSize: selectedSize,
                              onClick: () {
                                setState(() {
                                  selectedSize = 0;
                                });
                              },
                            ),
                            CoffeeSize(
                              title: "M",
                              index: 1,
                              selectedSize: selectedSize,
                              onClick: () {
                                setState(() {
                                  selectedSize = 1;
                                });
                              },
                            ),
                            CoffeeSize(
                              title: "L",
                              index: 2,
                              selectedSize: selectedSize,
                              onClick: () {
                                setState(() {
                                  selectedSize = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                  ],
                ),
              ),
              Container(
                height: 121,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: GoogleFonts.sora(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff9B9B9B)),
                            ),
                            Text(
                              "\$ 4.53",
                              style: GoogleFonts.sora(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xffC67C4E)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 217,
                          height: 62,
                          child: CustomButton(
                            onPressed: () => 
                            
                                Navigator.pushNamed(context, Routes.order),
                            title: 'Add to cart',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
