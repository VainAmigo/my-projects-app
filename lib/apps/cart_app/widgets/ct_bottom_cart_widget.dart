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

class _CtBottomCartWidgetState extends State<CtBottomCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () => widget.onTap?.call(),
        child: SizedBox(
          height: widget.cartBlockHeight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text('Cart', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)),
                const SizedBox(width: 8),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                          widget.cart
                              .map(
                                (item) => Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey[800],
                                    child: Icon(item.icon, color: Colors.white, size: 24),
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Badge.count(
                  padding: EdgeInsets.all(16),
                  count: widget.cart.length,
                  textColor: Colors.white,
                  backgroundColor: Colors.redAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
