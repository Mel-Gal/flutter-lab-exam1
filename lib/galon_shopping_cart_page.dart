import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4F6F9),
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => debugPrint('Back clicked'),
        ),
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black87),
                onPressed: () => debugPrint('Cart clicked'),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade600,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'CAMPUS STORE',
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Ready for checkout',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F172A),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Review your items before placing your order.',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
              ),
              const SizedBox(height: 24),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.blue.shade600),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Deliver to Glenn Oliva',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Matina, Davao City',
                            style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () => debugPrint('Change delivery address clicked'),
                      child: Text(
                        'Change',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Order Items',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '3 items',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              const CartItemCard(
                name: 'Wireless Mouse',
                price: 'PHP 450.00',
                quantity: 1,
                icon: Icons.mouse_outlined,
              ),
              const CartItemCard(
                name: 'USB-C Hub',
                price: 'PHP 850.00',
                quantity: 1,
                icon: Icons.hub_outlined,
              ),
              const CartItemCard(
                name: 'Laptop Stand',
                price: 'PHP 700.00',
                quantity: 1,
                icon: Icons.laptop_windows_outlined,
              ),
              const SizedBox(height: 8),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade100),
                ),
                child: Row(
                  children: [
                    Icon(Icons.local_offer_outlined, color: Colors.blue.shade700),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'STUDENT10 applied',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '10% discount on items',
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.check_circle, color: Colors.blue.shade600),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Payment Summary',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    _buildSummaryRow('Subtotal', 'PHP 2,000.00'),
                    const SizedBox(height: 12),
                    _buildSummaryRow('Discount (10%)', '- PHP 200.00'),
                    const SizedBox(height: 12),
                    _buildSummaryRow('Delivery Fee', 'PHP 50.00'),
                    const Divider(height: 32, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'PHP 1,850.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => debugPrint('Place order clicked! Total: PHP 1850.00'),
                  icon: const Icon(Icons.lock_outline, color: Colors.white, size: 20),
                  label: const Text(
                    'Place Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade700,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                ),
              ),
              const SizedBox(height: 24), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String label, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(color: Colors.grey.shade700, fontSize: 14)),
        Text(amount, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
      ],
    );
  }
}


class CartItemCard extends StatelessWidget {
  final String name;
  final String price;
  final int quantity;
  final IconData icon;

  const CartItemCard({
    super.key,
    required this.name,
    required this.price,
    required this.quantity,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.blue.shade800, size: 32),
          ),
          const SizedBox(width: 16),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF0F172A),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    _buildQtyButton(
                      Icons.remove,
                      () => debugPrint('Decrease quantity: $name'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        '$quantity',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    _buildQtyButton(
                      Icons.add,
                      () => debugPrint('Increase quantity: $name'),
                    ),
                  ],
                )
              ],
            ),
          ),
          // Delete Button
          IconButton(
            padding: EdgeInsets.zero,
            alignment: Alignment.topRight,
            icon: const Icon(Icons.delete_outline, color: Colors.grey),
            onPressed: () => debugPrint('Remove item: $name'),
          ),
        ],
      ),
    );
  }

  Widget _buildQtyButton(IconData icon, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade200),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(icon, size: 16, color: Colors.blue.shade700),
      ),
    );
  }
}