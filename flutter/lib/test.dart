//File: order_details_screen.dart//

import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24.0),
                Row(
                  children: [
                    const Icon(Icons.arrow_back_ios, color: Color(0xFF223263)),
                    const SizedBox(width: 8.0),
                    Text(
                      'Order Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF223263),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                Text(
                  'Products',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF223263),
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildProductCard(),
                    _buildProductCard(),
                  ],
                ),
                const SizedBox(height: 24.0),
                Text(
                  'Shipping Details',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF223263),
                  ),
                ),
                const SizedBox(height: 8.0),
                _buildShippingDetails(),
                const SizedBox(height: 24.0),
                Text(
                  'Payment Details',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF223263),
                  ),
                ),
                const SizedBox(height: 8.0),
                _buildPaymentDetails(),
                const SizedBox(height: 24.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF40bfff),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 16,
                      ),
                    ),
                    child: Text(
                      'Notify Me',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProductCard() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFd1d6e8)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      width: 160.0,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color(0xFFebf0ff),
              image: const DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage('https://shorturl.at/7FYy7'),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Nike Air Max 270 React ENG',
            style: TextStyle(
              color: Color(0xFF223263),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4.0),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                size: 16,
                color: index < 4 ? Color(0xFFFFC833) : Color(0xFFDADADA),
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            '\$299,43',
            style: TextStyle(
              color: Color(0xFF40bfff),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 2.0),
          Row(
            children: [
              Text(
                '\$534,33',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Color(0xFF9098B1),
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 4.0),
              Text(
                '24% Off',
                style: TextStyle(
                  color: Color(0xFFFF7181),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildShippingDetails() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Color(0xFFd1d6e8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildShippingRow('Date Shipping:', 'January 16, 2020'),
          const SizedBox(height: 8.0),
          _buildShippingRow('Shipping:', 'POS Reggular'),
          const SizedBox(height: 8.0),
          _buildShippingRow('No. Resi:', '000192848573'),
          const SizedBox(height: 8.0),
          _buildShippingRow(
              'Address:', '2727 New  Owerri, Owerri, Imo State 78410'),
        ],
      ),
    );
  }

  Widget _buildShippingRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF9098B1),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Color(0xFF223263),
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentDetails() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Color(0xFFd1d6e8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPaymentRow('Items (3):', '\$598.86'),
          const SizedBox(height: 8.0),
          _buildPaymentRow('Shipping:', '\$40.00'),
          const SizedBox(height: 8.0),
          _buildPaymentRow('Import charges:', '\$128.00'),
          const Divider(color: Color(0xFFDADADA)),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Price',
                style: TextStyle(
                  color: Color(0xFF223263),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                '\$766.86',
                style: TextStyle(
                  color: Color(0xFF40bfff),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF9098B1),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Color(0xFF223263),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
