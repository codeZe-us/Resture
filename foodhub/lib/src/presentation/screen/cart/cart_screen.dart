import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../common/routes/routess/app_routes.dart';
import '../../Logic/Controller/controller.dart';
import '../../widgets/button_bar.dart';
import '../../widgets/cart_list_view.dart';
import '../../widgets/coubter_button.dart';
import '../../widgets/empty.dart';
import '../home/home.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("Cart",
          style: TextStyle(color: Colors.black, fontSize: 20)),
      actions: [
        IconButton(
          splashRadius: 20.0,
          onPressed: controller.clearCart,
          icon: const Icon(Icons.delete, color: Colors.black),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: Obx(
        () {
          return BottomBar(
            priceLabel: "Total price",
            priceValue: "\$${controller.totalPrice.value.toStringAsFixed(2)}",
            buttonLabel: "Checkout",
            onTap: controller.totalPrice > 0
                ? () {
                    Navigator.pushNamed(
                      context,
                      Routes.cartScreen,
                    );
                  }
                : null,
          );
        },
      ),
      body: GetBuilder(
        builder: (OfficeProductController controller) {
          return controller.cartProduct.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.all(15),
                  child: CartListView(
                    productsItems: controller.cartProduct,
                    counterButton: (products) {
                      return CounterButton(
                        orientation: Axis.vertical,
                        onIncrementSelected: () =>
                            controller.increaseItem(products),
                        onDecrementSelected: () =>
                            controller.decreaseItem(products),
                        label: products.quantity,
                      );
                    },
                  ),
                )
              : const EmptyWidget(title: "Empty");
        },
      ),
    );
  }
}
