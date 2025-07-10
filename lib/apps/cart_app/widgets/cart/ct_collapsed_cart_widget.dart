import 'package:drible_app/apps/cart_app/cart_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CtCollapsedCartWidget extends StatelessWidget {
  const CtCollapsedCartWidget({super.key, required this.widget, this.onTap});

  final CtBottomCartWidget widget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(onTap: onTap, child: Text('Cart', style: AppTypography.white28w600)),
        const SizedBox(width: 8),
        Expanded(
          child: SizedBox(
            height: 35,
            child: BlocBuilder<CartCubit, List<Item>>(
              builder: (context, cartItems) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cartItems.length,
                  itemBuilder: (_, index) {
                    final item = cartItems[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: GestureDetector(
                        onTap: () {
                          context.read<CartCubit>().removeFromCart(item);
                        },
                        child: CtItemCircleImage(imageUrl: item.image),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
        const SizedBox(width: 8),
        Badge.count(
          padding: const EdgeInsets.all(10),
          count: widget.cart.length,
          textColor: AppColors.white,
          textStyle: AppTypography.white16w600,
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}
