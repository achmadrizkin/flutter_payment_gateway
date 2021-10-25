import 'package:flutter/material.dart';
import 'package:flutter_payment_gateway/env.dart';
import 'package:flutter_payment_gateway/pages/payment_screen.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  Stripe.publishableKey = PUBLIC_KEY;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PaymentScreen(),
    );
  }
}