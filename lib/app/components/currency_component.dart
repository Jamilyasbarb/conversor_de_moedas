import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CurrencyComponent extends StatefulWidget {
  const CurrencyComponent({super.key});

  @override
  State<CurrencyComponent> createState() => _CurrencyComponentState();
}
  final List<String> moedas=['Real','Dolar','Euro', 'bitcoin'];

class _CurrencyComponentState extends State<CurrencyComponent> {
  String op = moedas.first;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60,top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 65,
                child: DropdownButton<String>(
                  isExpanded: true,
                  iconEnabledColor: Colors.amber,
                  // underline: Container(
                  //   height: 1,
                  //   width: 1,
                  //   color: Colors.amber,
                  // ),
                  value: op,
                  items: moedas.map((e) => DropdownMenuItem(value: e,child:Text(e))).toList(),
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      op = value! ;
                    });
                  },
                ),
              ),
            ),
            const Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                  // quando o input estiver desativado
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  // quando o input estiver ativo
                  focusColor: Colors.blue
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}