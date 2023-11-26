import 'package:flutter/material.dart';
import 'package:dinoss/widgets/CartAppBar.dart';
import 'package:dinoss/widgets/CartItemSamples.dart';
import 'package:dinoss/widgets/CartBottomNavbar.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),

          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
           )),
           child: Column(
  children: [
    CartItemSamples(), // Bagian lain dari tampilan Anda, seperti daftar item keranjang
    Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: ElevatedButton(
        onPressed: () {
          // Menampilkan dialog untuk memasukkan kode kupon
          showDialog(
            context: context, // Pastikan untuk memiliki akses ke `context`
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Enter Coupon Code'),
                content: TextFormField(
                  // Widget untuk memasukkan kode kupon
                  // Tambahkan logika sesuai kebutuhan, seperti validasi, dll.
                ),
                actions: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk menangani ketika tombol "Submit" pada dialog ditekan
                      Navigator.of(context).pop(); // Tutup dialog setelah menekan "Submit"
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Tutup dialog jika tombol "Cancel" ditekan
                    },
                    child: Text('Cancel'),
                  ),
                ],
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15),
          primary: Color(0xFF4C53A5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              "Add Coupon Code",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ),
  ],
)
          )
        ],
      ),
      bottomNavigationBar: CartBottomNavbar(),
    );
  }
}
