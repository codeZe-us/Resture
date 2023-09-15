import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodhub/src/common/extensions/size_config_extension/size_config.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/managers/asset_manager/asset_manager.dart';
import '../../../data/model/product_model.dart';
import '../../Logic/Controller/controller.dart';
import '../../widgets/banner.dart';
import '../../widgets/category_item.dart';
import '../../widgets/item.dart';

final OfficeProductController controller = Get.put(OfficeProductController());

class Home extends StatefulWidget {
 
  const Home({super.key, });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedCategory = 0;
  List<String> list = ['Recommended', 'View all'];

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.black, // Color for Android
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
        backgroundColor: const Color(0xffF9F9F9),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 280.height(),
                width: size.width,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
              ),
              Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 315,
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.060,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Location",
                                    style: GoogleFonts.sora(
                                      color: Colors.orange,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Lagos, Nigeria",
                                        style: GoogleFonts.sora(
                                          color: const Color(0xffDDDDDD),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.white,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 44.width(),
                                height: 44.height(),
                                child: Image.asset(
                                  AssetManager.zeus,
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.height(),
                          ),
                          SizedBox(
                            height: 52,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xff313131),
                                contentPadding: const EdgeInsets.only(
                                  top: 23,
                                  bottom: 2,
                                  right: 5,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                hintText: "Search item",
                                hintStyle: GoogleFonts.sora(
                                  color: const Color(0xff989898),
                                ),
                                prefixIcon: const Icon(
                                  Iconsax.search_normal,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                suffixIcon: Container(
                                  width: 44,
                                  height: 44,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(
                                    Iconsax.setting_4,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50.height(),
                          ),
                          SizedBox(
                            width: 300.width(),
                            height: 160.height(),
                            child: CarouselSlider(
                              options: CarouselOptions(
                                viewportFraction: 1,
                                enlargeFactor: 0.3,
                                height: 160.height(),
                                enlargeCenterPage: true,
                                autoPlay: true,
                              ),
                              items: List.generate(
                                5,
                                (index) => const BannerCard(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.height(),
                          ),
                          SizedBox(
                            height: 40.height(),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  list.length,
                                  (index) => CategoryItem(
                                    index: index,
                                    title: list[index],
                                    selectedCategory: selectedCategory,
                                    onClick: () {
                                      setState(() => selectedCategory = index);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 300.height(),
                    width: 340.width(),
                    alignment: Alignment.center,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: size.width / 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 239,
                      ),
                      children: [
                        Item(
                          product: Product(
                            id: 1,
                            title: "Product 1", // Replace with the actual title
                            price: 4.53, // Replace with the actual price
                            description:
                                "Description 1", // Replace with the actual description
                            category: "Category 1",
                            // image: Image.network(widget.product.image ?? ""),
                            rating: Rating(rate: 4.9, count: 100),
                          ),
                        ),
                        Item(
                          product: Product(
                            id: 1,
                            title: "Product 2", // Replace with the actual title
                            price: 4.53, // Replace with the actual price
                            description:
                                "Description 1", // Replace with the actual description
                            category: "Category 1",
                            // image: Image.network(widget.product.image ?? ""),
                            rating: Rating(rate: 4.9, count: 100),
                          ),
                        ),
                        Item(
                          product: Product(
                            id: 1,
                            title: "Product 3", // Replace with the actual title
                            price: 4.53, // Replace with the actual price
                            description:
                                "Description 1", // Replace with the actual description
                            category: "Category 1",
                            // image: Image.network(widget.product.image ?? ""),
                            rating: Rating(rate: 4.9, count: 100),
                          ),
                        ),
                        Item(
                          product: Product(
                            id: 1,
                            title: "Product 4", // Replace with the actual title
                            price: 4.53, // Replace with the actual price
                            description:
                                "Description 1", // Replace with the actual description
                            category: "Category 1",
                            // image: Image.network(widget.product.image ?? ""),
                            rating: Rating(rate: 4.9, count: 100),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
