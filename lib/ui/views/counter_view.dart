import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  final String base;

  const CounterView({Key? key, required this.base}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterView> {
  int counter = 0;

  @override
  void initState() {
    if (int.tryParse(widget.base) != null) {
      counter = int.parse(widget.base);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //CustomAppMenu(),
        Spacer(),
        Text(
          'Contador Stateful',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                text: 'Sumar',
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                }),
            CustomFlatButton(
                text: 'Restar',
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                }),
          ],
        ),
        Spacer()
      ],
    );
  }
}
