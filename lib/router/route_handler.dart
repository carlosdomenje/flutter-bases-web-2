import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

// Handlers
final counterHandler = Handler(handlerFunc: (context, params) {
  print(params);
  // ? is for null safety, ask if base is null othercase sends 5
  //return CounterView(base: params['base']?[0] ?? '5');
  return CounterView(base: params['base']?.first ?? '5');
});

// .first is same as [0] param
final providerHandler = Handler(handlerFunc: (context, params) {
  return CounterProviderView(baseQuery: params['q']?.first ?? '5');
});

final dashboardUserHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return View404();
});

final notFoundHandler = Handler(handlerFunc: (_, __) => View404());
