import 'package:coin_dex/app/model/coin_list_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoinDetailPage extends StatelessWidget {
  CoinDetailPage({Key? key, required this.coin}) : super(key: key);
  CoinModel coin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(coin.name!),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 620,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Center(
                    child: Image.network(
                      coin.image!,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      coin.name!,
                      style: const TextStyle(
                        fontSize: 25,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "${coin.name} lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quidem.",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Price Change 24H: ${coin.priceChange24H.toString()}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Market Cap: ${coin.marketCap.toString()}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Rank: ${coin.marketCapRank.toString()}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Circulating Supply: ${coin.circulatingSupply.toString()}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Total Supply: ${coin.totalSupply.toString()}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Max Supply: ${coin.maxSupply.toString()}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Last Updated: ${coin.lastUpdated.toString()}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Market Cap Change 24H: ${coin.marketCapChangePercentage24H.toString()}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
