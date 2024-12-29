import 'package:bloc_project/cubit/dashboard_cubit.dart';
import 'package:bloc_project/service_locator/service_locator.dart';
import 'package:bloc_project/view/dashboard_bloc_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: DashboardBlocView(),
      ),
    );
  }
}
