import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/login_required.dart';

class ScanTicketPage extends StatelessWidget {
  const ScanTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginRequired(icon: Icons.crop_free_rounded, title: "Scanner", message: "Message"),
    );
  }
}
