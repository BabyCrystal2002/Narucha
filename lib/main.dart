import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onlinedb_narucha/addproduct.dart';
import 'addproduct.dart';
import 'showproduct.dart';
import 'showproducttype.dart';
import 'showfiltertype.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOUcBAcMu6ZjzDa88kncxjbfSPvoWnd8M",
            authDomain: "onlinefirebase-141f8.firebaseapp.com",
            databaseURL:
                "https://onlinefirebase-141f8-default-rtdb.firebaseio.com",
            projectId: "onlinefirebase-141f8",
            storageBucket: "onlinefirebase-141f8.firebasestorage.app",
            messagingSenderId: "993542594824",
            appId: "1:993542594824:web:399a0b2f1360755c274cbd",
            measurementId: "G-VFJFQCR9ZP"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Main(),
    );
  }
}

// Class stateful เรียกใช้การทำงานแบบโต้ตอบ
class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Main> {
  // ส่วนเขียน Code ภาษา Dart เพื่อรับค่าจากหน้าจอมา และส่งค่ากลับไป
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เมนูหลัก',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 171, 249),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // เพิ่มการเว้นระยะ
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ใช้ไอคอนตระกร้าแทนโลโก้
                Icon(
                  Icons.shopping_cart, // ไอคอนตระกร้าสินค้า
                  size: 100, // ขนาดของไอคอน
                  color: const Color.fromARGB(255, 2, 107, 243), // สีของไอคอน
                ),
                SizedBox(height: 5), // เว้นที่ว่างด้านล่างไอคอน

                SizedBox(height: 20), // เว้นที่ว่างด้านบน

                // ปรับสีตัวอักษรในข้อความต่างๆ
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => addproduct()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 8, 8, 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // มุมปุ่มโค้ง
                      ),
                      foregroundColor: Colors.blue, // เปลี่ยนสีตัวอักษรเป็นฟ้า
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('บันทึกข้อมูลสินค้า'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShowProduct()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // มุมปุ่มโค้ง
                      ),
                      foregroundColor: const Color.fromARGB(
                          255, 3, 138, 249), // เปลี่ยนสีตัวอักษรเป็นฟ้า
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('แสดงข้อมูลสินค้า'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowProductType()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // มุมปุ่มโค้ง
                      ),
                      foregroundColor: const Color.fromARGB(
                          255, 4, 134, 240), // เปลี่ยนสีตัวอักษรเป็นฟ้า
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('ประเภทข้อมูลสินค้า'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
