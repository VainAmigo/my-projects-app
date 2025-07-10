import 'package:drible_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:drible_app/apps/cart_app/cart_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CtHomeView extends StatefulWidget {
  const CtHomeView({super.key});

  @override
  State<CtHomeView> createState() => _CtHomeViewState();
}

class _CtHomeViewState extends State<CtHomeView> {
  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    final double totalHeight = MediaQuery.of(context).size.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double bottomSystemPadding = MediaQuery.of(context).padding.bottom;
    final double appBarHeight = kToolbarHeight;
    final double cartBlockCollapsedHeight = 80.0;
    final double cartBlockExpandedHeight = (totalHeight - (appBarHeight + statusBarHeight + bottomSystemPadding)) * 0.8;

    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(title: const Text('Cart App'), backgroundColor: AppColors.primarySurface),
      body: SafeArea(
        child: BlocBuilder<CartCubit, List<Item>>(
          builder: (context, cart) {
            final double cartBlockHeight = isCollapsed ? cartBlockExpandedHeight : cartBlockCollapsedHeight;
            final double closedHeight =
                totalHeight - (cartBlockHeight + appBarHeight + statusBarHeight + bottomSystemPadding);

            return Stack(
              children: [
                // нижний блок-корзина
                cart.isNotEmpty
                    ? CtBottomCartWidget(
                      cartBlockHeight: cartBlockHeight,
                      cart: cart,
                      onTap: () {
                        setState(() {
                          isCollapsed = !isCollapsed;
                        });
                      },
                    )
                    : SizedBox.shrink(),

                // основное содержимое
                Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    height: cart.isNotEmpty ? closedHeight : totalHeight,
                    decoration: BoxDecoration(
                      color: AppColors.primarySurface,
                      borderRadius:
                          cart.isNotEmpty
                              ? const BorderRadius.only(
                                bottomLeft: Radius.circular(32.0),
                                bottomRight: Radius.circular(32.0),
                              )
                              : BorderRadius.zero,
                    ),
                    child: Padding(padding: const EdgeInsets.all(16.0), child: _buildCatalog()),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildCatalog() {
    return GridView.builder(
      itemCount: catalog.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        final item = catalog[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRouter.cartProductDetailView, arguments: item);
          },
          child: Card(
            color: AppColors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                    child: Hero(tag: item.image, child: Image.asset(item.image, fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\$${item.price.toStringAsFixed(2)}', style: AppTypography.black24w600),
                      const SizedBox(height: 6),
                      Text(item.name, style: AppTypography.black16w400, maxLines: 2, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
