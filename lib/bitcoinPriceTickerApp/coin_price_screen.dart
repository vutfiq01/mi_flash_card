// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../widget/navigation_drawer.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoinPriceScreen extends StatefulWidget {
  const CoinPriceScreen({
    super.key,
  });

  @override
  State<CoinPriceScreen> createState() => _CoinPriceScreenState();
}

class _CoinPriceScreenState extends State<CoinPriceScreen> {
  String selectedCurrency = 'USD';
  String coinAPIInitialUrl = 'https://api.coingecko.com/api/v3/simple/price';
  String btc2Currency = '?';
  String eth2Currency = '?';
  String ltc2Currency = '?';

  @override
  void initState() {
    super.initState();
    getCoinData(selectedCurrency);
  }

  void getCoinData(String selectedCurrency) async {
    try {
      int btcCoinRateD = await getAPIData('bitcoin', selectedCurrency);
      double ethCoinRateD = await getAPIData('ethereum', selectedCurrency);
      double ltcCoinRateD = await getAPIData('litecoin', selectedCurrency);
      setState(() {
        btc2Currency = btcCoinRateD.toString();
        eth2Currency = ethCoinRateD.toStringAsFixed(2);
        ltc2Currency = ltcCoinRateD.toStringAsFixed(2);
      });
    } catch (e) {
      print(e);
    }
  }

  Future getAPIData(String cryptoCoin, String selectedCurrency) async {
    http.Response apiResponse = await http.get(
      Uri.parse(
          '$coinAPIInitialUrl?ids=$cryptoCoin&vs_currencies=$selectedCurrency'),
    );
    if (apiResponse.statusCode == 200) {
      String apiData = apiResponse.body;
      var coinRateDecoded = jsonDecode(apiData);
      String selectedCurrencyLowerCase = selectedCurrency.toLowerCase();

      return coinRateDecoded[cryptoCoin][selectedCurrencyLowerCase];
    } else {
      print(apiResponse.statusCode);
    }
  }

  DropdownButton<String> materialDropdownButton() {
    List<DropdownMenuItem<String>> listItems = [];
    for (String currency in currenciesList) {
      listItems.add(
        DropdownMenuItem(
          value: currency,
          child: Text(
            currency,
          ),
        ),
      );
    }

    return DropdownButton<String>(
        menuMaxHeight: 400.0,
        iconEnabledColor: Colors.white,
        dropdownColor: Colors.teal[700],
        style: const TextStyle(color: Colors.white, fontSize: 17.0),
        value: selectedCurrency,
        items: listItems,
        onChanged: (value) {
          setState(() {
            selectedCurrency = value!;
            getCoinData(selectedCurrency);
          });
        });
  }

  CupertinoPicker cupertinoPicker() {
    List<Text> pickerItems = [];

    for (String currency in currenciesList) {
      pickerItems.add(
        Text(currency),
      );
    }
    return CupertinoPicker(
        backgroundColor: Colors.teal[500],
        itemExtent: 32.0,
        onSelectedItemChanged: (selectedIndex) {
          setState(() {
            selectedCurrency = currenciesList[selectedIndex];
            getCoinData(selectedCurrency);
          });
        },
        children: pickerItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Price'),
      ),
      drawer: const MyNavigationDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Column(
              children: [
                CryptoCard(
                    cryptoCurrency: 'BTC',
                    currencyPrice: btc2Currency,
                    selectedCurrency: selectedCurrency),
                const SizedBox(height: 20.0),
                CryptoCard(
                    cryptoCurrency: 'ETH',
                    currencyPrice: eth2Currency,
                    selectedCurrency: selectedCurrency),
                const SizedBox(height: 20.0),
                CryptoCard(
                    cryptoCurrency: 'LTC',
                    currencyPrice: ltc2Currency,
                    selectedCurrency: selectedCurrency),
              ],
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 30.0),
            color: Colors.teal[500],
            child:
                Platform.isIOS ? cupertinoPicker() : materialDropdownButton(),
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    super.key,
    required this.currencyPrice,
    required this.selectedCurrency,
    required this.cryptoCurrency,
  });

  final String currencyPrice;
  final String selectedCurrency;
  final String cryptoCurrency;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[500],
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
        child: Text(
          '1 $cryptoCurrency = $currencyPrice $selectedCurrency',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
