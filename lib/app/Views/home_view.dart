import 'package:conversor/app/components/currency_box.dart';
import 'package:conversor/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.only(top: 100, left: 40, right: 40),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 50),
                CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model!;
                    });
                  },
                  controller: toText,),
                SizedBox(height: 10),
                CurrencyBox(
                    selectedItem: homeController.fromCurrency,
                    items: homeController.currencies,
                    controller: fromText,
                    onChanged: (model) {
                      setState(() {
                        homeController.fromCurrency = model!;
                    });
                  },
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    homeController.convert();
                  },
                  child: Text('Converter',
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 15)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
