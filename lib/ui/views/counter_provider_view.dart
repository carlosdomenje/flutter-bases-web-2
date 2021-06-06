import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bases_web/provider/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  final String baseQuery;

  const CounterProviderView({Key? key, required this.baseQuery})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(baseQuery),
        child: _CounterProviderChangeBody());
  }
}

class _CounterProviderChangeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //CustomAppMenu(),
        Spacer(),
        Text(
          'Contador Provider',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Contador: ${counterProvider.counter}',
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
                  counterProvider.increment();
                }),
            CustomFlatButton(
                text: 'Restar',
                onPressed: () {
                  counterProvider.decrement();
                }),
          ],
        ),
        Spacer()
      ],
    );
  }
}
