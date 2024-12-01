import 'package:crypto_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:dio/dio.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AVAX,AID,ACE,TON,CAG,DOV&tsyms=USD,EUR');
    final data = response.data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = data.entries.map((e) {
      final priceUSD = e.value['USD']['PRICE'];
      final priceEUR = e.value['EUR']['PRICE'];
      final img = e.value['USD']['IMAGEURL'];
      return CryptoCoin(
          name: e.key,
          prices: {'USD': priceUSD, 'EUR': priceEUR},
          image: 'https://www.cryptocompare.com/$img');
    }).toList();

    return cryptoCoinsList;
  }
}
