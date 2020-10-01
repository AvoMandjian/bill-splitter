import 'package:bill_splitter_am/Screens/CalculationScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/getflutter.dart';

class HomePage extends StatelessWidget {
  static const String id = 'HomePage';
  static int mostPayed=0;
  static int leastPayed = 0;
  final inputmostPayedController = TextEditingController();
  final inputleastPayedController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Bill Splitter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              controller: inputmostPayedController,
              onChanged: (value) => mostPayed = int.parse(value),
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                icon: Icon(FontAwesomeIcons.moneyBill),
                labelText: 'Amount of the most payed',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            TextField(
              controller: inputleastPayedController,
              onChanged: (value) => leastPayed = int.parse(value),
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                icon: Icon(FontAwesomeIcons.moneyBill),
                labelText: 'Amount of the least payed',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            
            GFButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => CalculationScreen(
                    mostPayed: mostPayed,
                    leastPayed: leastPayed,
                  ),
                );
                inputmostPayedController.clear();
                inputleastPayedController.clear();
              },
              text: "Calculate",
              textStyle: TextStyle(fontSize: 35),
              shape: GFButtonShape.pills,
              fullWidthButton: true,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
