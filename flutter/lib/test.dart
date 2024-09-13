//File: order_details.dart//

import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF223263)),
        title: const Text(
          'Order Details',
          style: TextStyle(
            color: Color(0xFF223263),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Products',
                style: TextStyle(
                    color: Color(0xFF223263),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  ProductCard(),
                  SizedBox(width: 16),
                  ProductCard(),
                ],
              ),
              const SizedBox(height: 24),
              const SectionHeader(text: 'Shipping Details'),
              const SizedBox(height: 8),
              DetailCard(
                details: const [
                  DetailRow('Date Shipping', 'January 16, 2020'),
                  DetailRow('Shipping', 'POS Reggular'),
                  DetailRow('No. Resi', '000192848573'),
                  DetailRow(
                      'Address', '2727 New Owerri, Owerri, Imo State 78410'),
                ],
              ),
              const SizedBox(height: 24),
              const SectionHeader(text: 'Payment Details'),
              const SizedBox(height: 8),
              PaymentDetailCard(
                details: const [
                  DetailRow('Items (3)', '\$598.86'),
                  DetailRow('Shipping', '\$40.00'),
                  DetailRow('Import charges', '\$128.00'),
                ],
                totalPrice: '\$766.86',
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF40bfff),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: const Text(
                    'Notify Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFd1d6e8)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://shorturl.at/7FYy7',
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nike Air Max 270 React ENG',
                  style: TextStyle(
                    color: Color(0xFF223263),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: List.generate(
                    4,
                    (index) => const Icon(
                      Icons.star,
                      color: Color(0xFFFFC833),
                      size: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$299,43',
                  style: TextStyle(
                    color: Color(0xFF40bfff),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '\$534,33',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Color(0xFF9098b1),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '24% Off',
                      style: TextStyle(
                        color: Color(0xFFFF7181),
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String text;

  const SectionHeader({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF223263),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String title;
  final String value;

  const DetailRow(this.title, this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF9098b1),
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xFF223263),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailCard extends StatelessWidget {
  final List<DetailRow> details;

  const DetailCard({required this.details, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFd1d6e8)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: details,
      ),
    );
  }
}

class PaymentDetailCard extends StatelessWidget {
  final List<DetailRow> details;
  final String totalPrice;

  const PaymentDetailCard(
      {required this.details, required this.totalPrice, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFd1d6e8)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...details,
          const SizedBox(height: 16),
          const Divider(
            color: Color(0xFFd1d6e8),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total Price',
                style: TextStyle(
                  color: Color(0xFF223263),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                totalPrice,
                style: const TextStyle(
                  color: Color(0xFF40bfff),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
