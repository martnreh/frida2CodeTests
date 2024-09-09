//File: account_details_screen.dart//

import 'package:flutter/material.dart';

class AccountDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffea002b),
        leading: Icon(Icons.arrow_back),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Detalle de cuenta'),
            Text(
              'Último acceso: 18/12/2023',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.flag, color: Colors.green),
                SizedBox(width: 8.0),
                Text(
                  'CUENTA DE CHEQUES - PESOS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 8.0,
                    color: Color(0xffff671b),
                  ),
                  title: Text('Enlace Tradicion...'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cuenta ******5584'),
                      Text('Saldo Disponible'),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$10,036,197,717.65'),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xff9f2455),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Confirmar Pedido',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
