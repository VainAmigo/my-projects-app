import 'package:drible_app/apps/cart_app/view/cubit/ct_cart_cubit.dart';
import 'package:drible_app/apps_list_page.dart';
import 'package:drible_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'My Apps',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),
        home: const AppsListPage(),
      ),
    );
  }
}
