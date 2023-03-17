import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://lh3.googleusercontent.com/ogw/AAEL6shH-73lemj5XC_u5y1RBtSF5dkbZxPKVOLN3im1Vg=s64-c-mo",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            Image.asset("assets/Icon-72.png"),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali ke Halaman Pertama"),
            ),
          ],
        ),
      ),
    );
  }
}
