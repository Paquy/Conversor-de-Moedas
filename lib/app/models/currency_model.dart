class CurrencyModel{
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({
    required this.name,
    required this.real,
    required this.dolar,
    required this.euro,
    required this.bitcoin
  });

  static List<CurrencyModel> getCurrencies(){
    return <CurrencyModel>[
      CurrencyModel(name: 'Real',real:  1, dolar: 0.18, euro: 0.15, bitcoin: 0.000016),
      CurrencyModel(name: 'Dolar',real: 5.16,dolar:  1,euro:  0.85,bitcoin: 0.000088),
      CurrencyModel(name: 'Euro',real: 5.12,dolar:  0.99,euro:  1,bitcoin: 0.00010),
      CurrencyModel(name: 'Bitcoin',real: 101.807,dolar:  19.741,euro:  19.884,bitcoin: 1),
    ];
  }
}