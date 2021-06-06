import 'package:bases_web/router/route_handler.dart';

import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

// stateful view
    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

// stateful view with argument
    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

// counter provider view
    router.define('/provider',
        handler: providerHandler, transitionType: TransitionType.fadeIn);

// example route for probe how Fluro resolve params of user and role
    router.define('/dashboard/users/:user/:role',
        handler: dashboardUserHandler, transitionType: TransitionType.fadeIn);

    router.notFoundHandler = notFoundHandler;
  }
}
