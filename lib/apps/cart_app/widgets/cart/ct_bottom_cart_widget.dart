import 'package:flutter/material.dart';
import 'package:drible_app/apps/cart_app/cart_app.dart';

class CtBottomCartWidget extends StatefulWidget {
  const CtBottomCartWidget({super.key, required this.cartBlockHeight, required this.cart, this.onTap});

  final double cartBlockHeight;
  final void Function()? onTap;
  final List<Item> cart;

  @override
  State<CtBottomCartWidget> createState() => _CtBottomCartWidgetState();
}

bool isExpanded = false;

class _CtBottomCartWidgetState extends State<CtBottomCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: widget.cartBlockHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child:
              isExpanded
                  ? CtExpandedCartWidget(widget: widget, onTap: () => _toggleCart())
                  : CtCollapsedCartWidget(widget: widget, onTap: () => _toggleCart()),
        ),
      ),
    );
  }

  void _toggleCart() {
    widget.onTap?.call();
    setState(() {
      isExpanded = !isExpanded;
    });
  }
}
