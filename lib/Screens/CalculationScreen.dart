import 'package:flutter/material.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/shape/gf_button_shape.dart';
import 'package:bill_splitter_am/Module/Calculator.dart';

class CalculationScreen extends StatefulWidget {
  CalculationScreen(
      {this.leastPayed, this.mostPayed});
  final int mostPayed;
  final int leastPayed;

  @override
  _CalculationScreenState createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
            'The Total Amount payed is: ${Calculator(leastPayed: widget.leastPayed,mostPayed: widget.mostPayed).getTotalAmount()}'),
        Text(
            'Least payed person should give ${Calculator(leastPayed: widget.leastPayed,mostPayed: widget.mostPayed).getRestPayment()} to the other'),
        GFButton(
          onPressed: () {
            Navigator.pop(context);
          },
          text: "Recalculate",
          textStyle: TextStyle(fontSize: 35),
          shape: GFButtonShape.pills,
          fullWidthButton: true,
          size: 100,
        ),
      ],
    );
  }
}
