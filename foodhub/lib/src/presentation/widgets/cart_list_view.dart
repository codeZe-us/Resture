import 'package:flutter/material.dart';
import 'package:foodhub/src/common/extensions/app_extension/app_extension.dart';


import '../../data/model/product_model.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    Key? key,
    required this.counterButton,
    required this.productsItems,
  }) : super(key: key);

  final Widget Function(Product products) counterButton;
  final List<Product> productsItems;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: productsItems.length,
      itemBuilder: (_, index) {
        Product products = productsItems[index];
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  // child: Image.network(),
                ),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(products.title!.addOverFlow, style: TextStyle(color: Colors.black, fontSize: 12)),
                  const SizedBox(height: 5),
                  Text("\$${products.price}", style: TextStyle(color: Colors.black, fontSize: 12)),
                  const SizedBox(height: 5),
                  
                ],
              ),
              // Spacer(),
              counterButton(products)
            ],
          ).fadeAnimation(0.4 * index),
        );
      },
      separatorBuilder: (_, __) {
        return const Padding(padding: EdgeInsets.only(bottom: 15));
      },
    );
  }
}
