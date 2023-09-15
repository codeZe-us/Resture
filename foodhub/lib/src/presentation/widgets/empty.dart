import 'package:flutter/material.dart';
import 'package:foodhub/src/common/managers/asset_manager/asset_manager.dart';


enum EmptyWidgetType { cart, favorite }

class EmptyWidget extends StatelessWidget {
  final EmptyWidgetType type;
  final String title;

  const EmptyWidget({
    Key? key,
    this.type = EmptyWidgetType.cart,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          type == EmptyWidgetType.cart
              ? Expanded(child: Image.asset(AssetManager.empty1))
              : Image.asset(AssetManager.empty2),
          const SizedBox(height: 10),
          Text(title, style: TextStyle(color: Colors.black, fontSize: 12))
        ],
      ),
    );
  }
}
