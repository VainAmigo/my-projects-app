import 'package:flutter/material.dart';
import 'package:drible_app/apps/cart_app/cart_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CtProductDetailView extends StatelessWidget {
  const CtProductDetailView({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    final inCart = cartCubit.isInCart(item);

    return Scaffold(
      backgroundColor: AppColors.primarySurface,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            child: Hero(tag: item.image, child: Image.asset(item.image, fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item.name, style: AppTypography.black24w600),
                    Text(item.price.toStringAsFixed(2), style: AppTypography.black24w600),
                  ],
                ),
                const SizedBox(height: 32),
                Text('About production', style: AppTypography.black16w600),
                const SizedBox(height: 8),
                Text(item.description, style: AppTypography.grey16w400),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(32),
                  splashColor: AppColors.primary,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.favorite_border, size: 24, color: AppColors.primary),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (!inCart) {
                        cartCubit.addToCart(item);
                      }

                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                    ),
                    child: Text('Add to Cart', style: AppTypography.white16w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
