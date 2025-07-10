class Item {
  final String image;
  final String name;
  final String description;
  final double price;

  const Item( {
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });
}

const List<Item> catalog = [
  Item(
    image: 'assets/product-1.png',
    name: 'Laptop',
    description: 'Powerful 16‑inch laptop with ultra-fast SSD storage, Retina display, long-lasting battery life, and ideal performance for professionals and creatives.',
    price: 1000,
  ),
  Item(
    image: 'assets/product-2.png',
    name: 'Wireless Headphones',
    description: 'Over-ear wireless headphones with active noise cancellation, deep bass, 40-hour battery life, and comfortable design for daily use and travel.',
    price: 199.99,
  ),
  Item(
    image: 'assets/product-3.png',
    name: 'Smart Camera',
    description: 'Compact mirrorless 4K smart camera with wide dynamic range, AI scene detection, and seamless integration with mobile editing applications.',
    price: 245,
  ),
  Item(
    image: 'assets/product-4.png',
    name: 'Electric Scooter',
    description: 'Lightweight and foldable electric scooter with extended range, regenerative braking system, fast charging, and smooth ride over city terrain.',
    price: 1999.99,
  ),
  Item(
    image: 'assets/product-5.png',
    name: 'Smartwatch Pro',
    description: 'Next-gen smartwatch with AMOLED screen, fitness and health tracking, GPS, sleep monitoring, and fast wireless charging support.',
    price: 700,
  ),
  Item(
    image: 'assets/product-6.png',
    name: 'Portable Speaker',
    description: 'Waterproof Bluetooth speaker with surround sound, deep bass, voice assistant support, and 24-hour playback time in one charge.',
    price: 649.99,
  ),
  Item(
    image: 'assets/product-7.png',
    name: 'Drone X5',
    description: 'High-performance drone with 4K camera, obstacle avoidance, auto-stabilization, and live-streaming feature for aerial photography and videos.',
    price: 999.99,
  ),
  Item(
    image: 'assets/product-8.png',
    name: 'E-Reader Glow',
    description: 'Sleek e-reader with anti-glare screen, adjustable warm light, long battery, and seamless sync with cloud-based ebook libraries.',
    price: 100,
  ),
  Item(
    image: 'assets/product-9.png',
    name: 'Smart Home Hub',
    description: 'Voice-activated smart hub for controlling lights, locks, and thermostats, with built-in assistant, privacy controls, and ambient display.',
    price: 500,
  ),
];

