import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final bool isHide;
  final Function()? onPressed;
  const FloatingActionButtonWidget({
    super.key,
    this.onPressed,
    this.isHide = false,
  });

  @override
  Widget build(BuildContext context) {
    return isHide
        ? const SizedBox()
        : FloatingActionButton(
            onPressed: onPressed,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          );
  }
}
