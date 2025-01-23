import 'package:flutter/material.dart';
import 'showfiltertype.dart';

// ข้อมูลประเภทสินค้า (แค่ 4 หมวดหมู่)
List<String> productTypes = [
  'Electronics', // เครื่องใช้ไฟฟ้า
  'Clothing', // เสื้อผ้า
  'Food', // อาหาร
  'Books', // หนังสือ
];

class ShowProductType extends StatelessWidget {
  const ShowProductType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ประเภทสินค้า'),
        backgroundColor:
            const Color.fromARGB(255, 0, 123, 255), // สีฟ้าของ AppBar
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // จำนวนคอลัมน์
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1.0,
        ),
        itemCount: productTypes.length,
        itemBuilder: (context, index) {
          final productType = productTypes[index];
          return Card(
            color: const Color.fromARGB(
                255, 255, 255, 255), // ตั้งค่าสีฟ้าเป็นพื้นหลังของแต่ละการ์ด
            elevation: 4,
            child: InkWell(
              onTap: () {
                // เมื่อคลิกที่ประเภทสินค้า
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowFilterType(
                        productType:
                            productType, // ส่งประเภทสินค้าที่เลือกไปยังหน้า ShowFilterType
                      ),
                    ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    size: 40,
                    color: const Color.fromARGB(255, 3, 173,
                        245), // สีไอคอนเป็นสีขาวเพื่อให้ตัดกับพื้นหลังฟ้า
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      productType,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(
                            255, 5, 5, 5), // เปลี่ยนสีข้อความเป็นขาว
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
