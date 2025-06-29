import 'package:drible_app/apps_list_page.dart';
import 'package:drible_app/education_app/education_app.dart';
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

  static Route<void> onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      appsListView => CupertinoPageRoute(builder: (_) => const AppsListPage()),
      edLoginView => CupertinoPageRoute(builder: (_) => const EdLoginView()),
      edRegisterView => CupertinoPageRoute(builder: (_) => const EdRegisterView()),
      edHomeInitialView => CupertinoPageRoute(builder: (_) => const EdHomeInitialViewView()),
      edHomeView => CupertinoPageRoute(builder: (_) => const EdHomeView()),
      _ => throw Exception('No builder specified for route named: [${settings.name}]'),
    };
  }
}
