import 'package:drible_app/apps/cart_app/cart_app.dart';
import 'package:drible_app/apps_list_page.dart';
import 'package:drible_app/apps/education_app/education_app.dart';
import 'package:drible_app/apps/water_consumed_app/water_consumed.dart';
import 'package:drible_app/apps/minimalistic_task_app/minimalistic_task.dart';
import 'package:flutter/cupertino.dart';

@immutable
final class AppRouter {
  const AppRouter._();

  // main routes
  static const appsListView = 'apps-list-view';

  // education app routes
  static const edLoginView = '/ed-login-view';
  static const edRegisterView = '/ed-register-view';
  static const edHomeInitialView = '/ed-home-initial-view';
  static const edHomeView = '/ed-home-view';

  // water consumed app routes
  static const wcHomeView = '/wc-home-view';

  // minimalistic task app routes
  static const mintHomeView = '/mint-home-view';

  // cart app routes
  static const cartHomeView = '/cart-home-view';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      appsListView => CupertinoPageRoute(builder: (_) => const AppsListPage()),
      edLoginView => CupertinoPageRoute(builder: (_) => const EdLoginView()),
      edRegisterView => CupertinoPageRoute(builder: (_) => const EdRegisterView()),
      edHomeInitialView => CupertinoPageRoute(builder: (_) => const EdHomeInitialViewView()),
      edHomeView => CupertinoPageRoute(builder: (_) => const EdHomeView()),
      wcHomeView => CupertinoPageRoute(builder: (_) => const WcHomeView()),
      mintHomeView => CupertinoPageRoute(builder: (_) => const MintHomeView()),
      cartHomeView => CupertinoPageRoute(builder: (_) => const CtHomeView()),
      _ => throw Exception('No builder specified for route named: [${settings.name}]'),
    };
  }
}
