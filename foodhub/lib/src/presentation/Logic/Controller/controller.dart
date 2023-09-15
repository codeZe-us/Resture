import 'package:foodhub/src/common/extensions/app_extension/app_extension.dart';
import 'package:foodhub/src/data/model/product_model.dart';
import 'package:get/get.dart';

class OfficeProductController extends GetxController {
  RxList<Product> cartProduct = <Product>[].obs;
  RxList<Product> favoriteProductList = <Product>[].obs;
  RxDouble totalPrice = 0.0.obs;

  void increaseItem(Product products) {
    products.quantity++;
    update();
    calculateTotalPrice();
  }

  void decreaseItem(Product products) {
    products.quantity = products.quantity-- < 1 ? 0 : products.quantity--;
    calculateTotalPrice();
    update();
    if (products.quantity < 1) {
      cartProduct.removeWhere((element) => element == products);
    }
  }

  addToCart(Product products) {
    if (products.quantity > 0) {
      cartProduct.add(products);
      cartProduct.assignAll(cartProduct.distinctBy((item) => item));
      calculateTotalPrice();
    }
  }

  calculateTotalPrice() {
    totalPrice.value = 0;
    for (var element in cartProduct) {
      totalPrice.value += element.quantity * element.price!;
    }
  }

  void clearCart() {
    cartProduct.clear();
    totalPrice.value = 0;
    update();
  }
}
