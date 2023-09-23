import 'package:flutter/material.dart';
import '../widget/navigation_drawer.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class CoinPriceScreen extends StatefulWidget {
  const CoinPriceScreen({super.key});

  @override
  State<CoinPriceScreen> createState() => _CoinPriceScreenState();
}

class _CoinPriceScreenState extends State<CoinPriceScreen> {
  String selectedCurrency = 'USD';

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
        onSelectedItemChanged: (selectedIndex) {},
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
            child: Card(
              color: Colors.teal[500],
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
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
