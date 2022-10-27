import 'package:conversor_de_moedas/app/components/currency_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}
    

class _HomePageState extends State<HomePage> {
     
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40, ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://m.media-amazon.com/images/I/61RYn+RqWrL.png', height: 150, width: 150,),
              const CurrencyComponent(),
              const CurrencyComponent(),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.amber,
                  )
                ),
                child: Text('Converter'),
                onPressed: (){

                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}