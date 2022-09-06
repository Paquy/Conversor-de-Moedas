import 'dart:math';

import 'package:conversor/app/controllers/home_controller.dart';
import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText, fromText);


  test('Converter Real para Dolar', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('Converter Dolar para Real', () {
    toText.text = '1.0';
    homeController.toCurrency = CurrencyModel('Dolar', 5.16, 1, 0.85, 0.000088);
    homeController.fromCurrency = CurrencyModel('Real', 1, 0.18, 0.15, 0.000016);
    homeController.convert();
    expect(fromText.text, '5.16');
  });

  test('Converter Real para Dolar com virgula', () {
    toText.text = '2,0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });
}