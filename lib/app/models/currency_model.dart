class CurrencyModel{
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({required this.name, required this.real,required this.dolar,required this.euro,required this.bitcoin});

  static List<CurrencyModel> getCurrency(){
    return <CurrencyModel>[
      CurrencyModel(name: 'Real', real: 1.0, dolar:0.19 , euro: 0.9, bitcoin:0.0000092 ),
      CurrencyModel(name: 'Dolar', real: 5.29, dolar:1.0 , euro: 1.0, bitcoin:0.000049 ),
      CurrencyModel(name: 'Euro', real: 5.29, dolar:1.0 , euro: 1.0, bitcoin:0.000049 ),
      CurrencyModel(name: 'Bitcoin', real: 109277.40, dolar:20589.50 , euro: 20589.40, bitcoin:1 ),
    ];
  }
}