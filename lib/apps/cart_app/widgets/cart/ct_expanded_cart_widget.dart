import 'package:flutter/material.dart';
import 'package:drible_app/apps/cart_app/cart_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CtExpandedCartWidget extends StatelessWidget {
  const CtExpandedCartWidget({super.key, required this.widget, this.onTap});

  final CtBottomCartWidget widget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    String getTotalPrice() {
      double total = 0.0;
      for (var item in widget.cart) {
        total += item.price;
      }
      return total.toStringAsFixed(2);
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(onTap: onTap, child: Text('Cart', style: AppTypography.white44w600),),
          Expanded(
            child: BlocBuilder<CartCubit, List<Item>>(
              builder: (context, cartItems) {
                return ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (_, index) {
                    final item = cartItems[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          CtItemCircleImage(imageUrl: item.image),
                          const SizedBox(width: 16),
                          Text(item.name, style: AppTypography.white16w600),
                          const Spacer(),
                          Text(item.price.toString(), style: AppTypography.grey16w400),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total:', style: AppTypography.white16w600),
                  Text(getTotalPrice(), style: AppTypography.white16w600),
                ],
              ),

              const SizedBox(height: 16),
              // next button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle checkout action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  ),
                  child: const Text('Next', style: AppTypography.white16w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
