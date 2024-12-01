import 'package:crypto_list/features/crypto_list/widgets/widgets.dart';
import 'package:crypto_list/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:crypto_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
    _loadCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto List'),
      ),
      body: _cryptoCoinsList == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemCount: _cryptoCoinsList!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final coin = _cryptoCoinsList![index];
                return CryptoCoinTile(coin: coin);
              }),
    );
  }

  Future<void> _loadCoins() async {
    _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
    setState(() {});
  }
}
