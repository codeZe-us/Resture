import 'package:flutter/material.dart';
import 'package:foodhub/src/common/extensions/size_config_extension/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/routes/routess/app_routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/type_toggle.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Order',
          style: GoogleFonts.sora(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.chevron_left,
            color: Color(0xff2F2D2C),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.height(),
              ),
              const TypeToggle(),
              SizedBox(
                height: 40.height(),
              ),
              Container(
                width: 315.width(),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Delivery Address",
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Port-Harcourt",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Omunwei, igwurutta.",
                      style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff808080),
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 16.height(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 150.width(),
                          height: 27.height(),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Iconsax.edit,
                                color: Colors.white,
                                size: 14,
                              ),
                              SizedBox(
                                width: 6.width(),
                              ),
                              Text(
                                "Edit Address",
                                style: GoogleFonts.sora(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 11.width(),
                        ),
                        Container(
                          width: 110.width(),
                          height: 27.height(),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffDEDEDE),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Iconsax.note_1,
                                size: 14,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Add Note",
                                style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.height(),
                    ),
                    Container(
                      height: 2.height(),
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.height(),
              ),
              Container(
                width: 315.width(),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 54.width(),
                          height: 54.height(),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            "assets/images/1.png",
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
                              "Cappucino",
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff2F2D2C),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 28.width(),
                          height: 28.height(),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(color: Colors.orange)),
                          child: Text(
                            "-",
                            style: GoogleFonts.sora(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                         SizedBox(
                          width: 15.width(),
                        ),
                        Text(
                          "1",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                         SizedBox(
                          width: 15.width(),
                        ),
                        Container(
                          width: 28.width(),
                          height: 28.height(),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: const Color(0xffEAEAEA),
                            ),
                          ),
                          child: Text(
                            "+",
                            style: GoogleFonts.sora(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
               SizedBox(
                height: 20.height(),
              ),
              // Container(
              //   height: 3.height(),
              //   decoration: const BoxDecoration(color: Colors.grey ),
              // ),
               SizedBox(
                height: 20.height(),
              ),
              Container(
                width: 315.width(),
                height: 56.height(),
                padding:  EdgeInsets.only(
                  left: 20.width(),
                  right: 20.width(),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.orange,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Iconsax.discount_shape5,
                          size: 24,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 12.width(),
                        ),
                        Text(
                          "1 Discount is applied",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.chevron_right,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.height(),
              ),
              SizedBox(
                width: 315.width(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Summary",
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                      ),
                    ),
                     SizedBox(
                      height: 13.height(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "\$ 4.53",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                     SizedBox(
                      height: 7.height(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Fee",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ 2.0",
                              style: GoogleFonts.sora(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                             SizedBox(
                              width: 8.width(),
                            ),
                            Text(
                              "\$ 1.0",
                              style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                     SizedBox(
                      height: 7.height(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Payment",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "\$ 5.53",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 376.width(),
                height: 151.height(),
                padding:  EdgeInsets.only(
                  top: 25.height(),
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 315.width(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Iconsax.moneys,
                                color: Color(0xffC67C4E),
                                weight: 24,
                              ),
                               SizedBox(
                                width: 10.width(),
                              ),
                              Container(
                                width: 112.width(),
                                height: 24.height(),
                                decoration: BoxDecoration(
                                  color: const Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 51.width(),
                                      height: 24.height(),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffC67C4E),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Cash",
                                        style: GoogleFonts.sora(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                     SizedBox(
                                      width: 10.width(),
                                    ),
                                    Text(
                                      "\$ 5.53",
                                      style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 24.width(),
                            height: 24.height(),
                            decoration: BoxDecoration(
                              color: const Color(0xff808080),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Iconsax.more,
                              size: 19.2,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                     SizedBox(
                      height: 15.height(),
                    ),
                    SizedBox(
                      width: 315.width(),
                      height: 62.height(),
                      child: CustomButton(
                        title: 'Order',
                        onPressed: () =>
                            Navigator.of(context).pushNamed(Routes.delivery),
                      ),
                    )
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
