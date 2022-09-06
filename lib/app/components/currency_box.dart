import 'package:flutter/material.dart';
import '../models/currency_model.dart';

class CurrencyBox extends StatelessWidget {
  List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel? model)? onChanged;

  CurrencyBox({
    Key? key,
    required this.items,
    required this.controller,
    required this.onChanged,
    required this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 65,
          child: DropdownButton<CurrencyModel>(
            iconEnabledColor: Colors.amber,
            underline: Container(
              color: Colors.amber,
              height: 1,
            ),
            value: selectedItem,
            items: items
                .map(
                  (e) => DropdownMenuItem(
                value: e,
                child: Text(e.name, style: const TextStyle(fontSize: 22)),
              ),
            )
                .toList(),
            onChanged: onChanged,
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 150,
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
