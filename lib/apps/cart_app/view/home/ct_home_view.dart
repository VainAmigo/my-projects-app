import 'package:flutter/material.dart';
import 'package:drible_app/apps/cart_app/cart_app.dart';

class CtHomeView extends StatefulWidget {
  const CtHomeView({super.key});

  @override
  State<CtHomeView> createState() => _CtHomeViewState();
}

final List<Item> catalog = const [
  Item(name: 'Laptop', description: 'Powerful 16‑inch', icon: Icons.laptop_mac),
  Item(name: 'Headphones', description: 'Noise‑canceling', icon: Icons.headphones),
  Item(name: 'Camera', description: 'Mirrorless 4K', icon: Icons.camera_alt),
  Item(name: 'Smartwatch', description: 'AMOLED display', icon: Icons.watch),
  Item(name: 'Electric Car', description: 'Fast & silent', icon: Icons.electric_car),
  Item(name: 'Laptop', description: 'Powerful 16‑inch', icon: Icons.ac_unit),
  Item(name: 'Headphones', description: 'Noise‑canceling', icon: Icons.access_alarm),
  Item(name: 'Camera', description: 'Mirrorless 4K', icon: Icons.access_time_filled_sharp),
  Item(name: 'Smartwatch', description: 'AMOLED display', icon: Icons.accessible_forward),
  Item(name: 'Electric Car', description: 'Fast & silent', icon: Icons.account_balance_wallet_rounded),
];

final List<Item> cart = [];

bool isCollapsed = false;

class _CtHomeViewState extends State<CtHomeView> {
  @override
  Widget build(BuildContext context) {
    final double totalHeight = MediaQuery.of(context).size.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double bottomSystemPadding = MediaQuery.of(context).padding.bottom;

    final double appBarHeight = kToolbarHeight;
    final double cartBlockHeight = isCollapsed ? 500 : 80.0;

    final double closedHeight = totalHeight - (cartBlockHeight + appBarHeight + statusBarHeight + bottomSystemPadding);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Cart App'),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            // background cart block
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

            // main screen
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                height: cart.isNotEmpty ? closedHeight : totalHeight,
                padding: const EdgeInsets.only(bottom: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      cart.isNotEmpty
                          ? BorderRadius.only(bottomLeft: Radius.circular(32.0), bottomRight: Radius.circular(32.0))
                          : BorderRadius.circular(0.0),
                ),
                child: _buildCatalog(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCatalog() => ListView.separated(
    padding: const EdgeInsets.fromLTRB(16, 24, 16, 120),
    itemCount: catalog.length,
    separatorBuilder: (_, __) => const SizedBox(height: 12),
    itemBuilder: (ctx, i) {
      final item = catalog[i];
      final inCart = cart.contains(item);

      return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          leading: Icon(item.icon, size: 36),
          title: Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(item.description),
          trailing: IconButton(
            icon: Icon(inCart ? Icons.remove_shopping_cart : Icons.add_shopping_cart),
            onPressed:
                () => setState(() {
                  inCart ? cart.remove(item) : cart.add(item);
                }),
          ),
        ),
      );
    },
  );
}
