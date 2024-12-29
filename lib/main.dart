import 'package:bloc_project/app.dart';
import 'package:bloc_project/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // first app will collect what RAM it required

  await initDependencies();

  runApp(MyApp());
}
