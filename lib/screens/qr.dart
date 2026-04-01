import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRPage extends StatelessWidget {
  const QRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("QR 스캔")),
      body: MobileScanner(
        onDetect: (barcode, args) {
          final code = barcode.rawValue;
          if (code != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("QR: $code")),
            );
          }
        },
      ),
    );
  }
}
