import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Map<String, dynamic> product;

  // Constructor เพื่อรับข้อมูลของสินค้า
  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // แสดงชื่อสินค้า
            Text(
              product['name'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // แสดงรายละเอียดสินค้า
            Text(
              'รายละเอียด: ${product['description']}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // แสดงวันที่ผลิต
            Text(
              'วันที่ผลิต: ${product['productionDate']}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // แสดงราคา
            Text(
              'ราคา: ${product['price']} บาท',
              style: const TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 5, 5, 5)),
            ),
            const SizedBox(height: 16),
            // แสดงจำนวนสินค้า
            Text(
              'จำนวน: ${product['quantity']} ชิ้น',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
