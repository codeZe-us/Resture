import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final Function() onIncrementSelected;
  final Function() onDecrementSelected;
  final int label;
  final Axis orientation;

  const CounterButton({
    Key? key,
    required this.onIncrementSelected,
    required this.onDecrementSelected,
    required this.label,
    this.orientation = Axis.horizontal,
  }) : super(key: key);

  Widget button(Icon icon, Function() onTap) {
    return RawMaterialButton(
      constraints: BoxConstraints.tight(const Size(36, 36)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Colors.white,
      onPressed: () => onTap(),
      child: icon,
    );
  }

  List<Widget> body() {
    return [
      button(const Icon(Icons.remove), onDecrementSelected),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text("$label", style: TextStyle(color: Colors.black, fontSize: 12)),
      ),
      button(const Icon(Icons.add), onIncrementSelected),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return orientation == Axis.horizontal
        ? Row(mainAxisAlignment: MainAxisAlignment.end, children: body())
        : Column(children: body().reversed.toList());
  }
}
