import 'package:crypto_list/router/router.dart';
import 'package:crypto_list/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto List',
      theme: darkTheme,
      routes: routes,
    );
  }
}
