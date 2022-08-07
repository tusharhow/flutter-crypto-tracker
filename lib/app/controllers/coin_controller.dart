import 'dart:convert';
import 'package:coin_dex/app/model/coin_list_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CoinController extends GetxController {
  static const coinList =
      "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false";
  List coinListData = [];
  Future<List<CoinModel>> getCoinList() async {
    final response = await http.get(Uri.parse(coinList));
    if (response.statusCode == 200) {
      coinListData.add(json.decode(response.body));
      print(response.body);
      final data = json.decode(response.body).map<CoinModel>((json) {
        return CoinModel.fromJson(json);
      }).toList();
      update();
      return data;
    } else {
      throw Exception('Failed to load coin list');
    }
  }

  @override
  void onInit() {
    getCoinList();

    super.onInit();
  }
}
