
import 'package:flutter/material.dart';
import 'package:foodhub/src/data/model/product_model.dart';

import '../../../presentation/Logic/Controller/controller.dart';
import '../../../presentation/screen/cart/cart_screen.dart';
import '../../../presentation/screen/delivery/delivery.dart';
import '../../../presentation/screen/details/detail.dart';
import '../../../presentation/screen/home/home.dart';
import '../../../presentation/screen/order/order.dart';
import '../../../presentation/screen/welcome/welcome.dart';
import '../routess/app_routes.dart';

late final Product products;
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcome:
        return buildRoute(
          const Welcome(),
          settings: settings,
        );
      case Routes.home:
        return buildRoute(
          const Home(),
          settings: settings,
        );
      case Routes.detail:
        return buildRoute(
          const Detail(),
          settings: settings,
        );
      case Routes.order:
        return buildRoute(
          const Order(),
          settings: settings,
        );
      case Routes.delivery:
        return buildRoute(
          const Delivery(),
          settings: settings,
        );
        case Routes.cartScreen:
        return buildRoute(
          const CartScreen(),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
        settings: settings, builder: (BuildContext context) => child);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'ERROR!!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Seems the route you\'ve navigated to doesn\'t exist!!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
