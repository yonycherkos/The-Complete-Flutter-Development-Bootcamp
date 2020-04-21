import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'coin_data.dart';
import 'networking.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  String BTCPrice = '?';

  Future<dynamic> getCurrencyData() async {
    var url = 'https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC$selectedCurrency';

    Network network = Network(url);
    var currencyData = await network.getData();
    return currencyData;
  }

  void updateUI() async {
    var currencyData = await getCurrencyData();

    if (currencyData != null) {
      setState(() {
        BTCPrice = currencyData['last'].toString();
      });
    }
  }

  DropdownButton androidDropdown() {
    List<DropdownMenuItem<String>> dropdownMenuItemList = [];
    for (String currency in currenciesList) {
      var newDropdownMenuItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownMenuItemList.add(newDropdownMenuItem);
    }

    return DropdownButton(
        value: selectedCurrency,
        items: dropdownMenuItemList,
        onChanged: (value) {
          setState(() {
            selectedCurrency = value;
          });
          updateUI();
        });
  }

  CupertinoPicker iosPicker() {
    List<Text> pickersItems = [];
    for (String currency in currenciesList) {
      pickersItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32,
      onSelectedItemChanged: (selectedIndex) {
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
        });
        updateUI();
      },
      children: pickersItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('🤑 Coin Ticker'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = $BTCPrice $selectedCurrency',
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
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iosPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}
