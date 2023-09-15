import 'package:flutter/material.dart';

import 'src/common/routes/route_generator/route_generator.dart';
import 'src/common/routes/routess/app_routes.dart';
import 'src/common/size_config/size_config.dart';
import 'src/presentation/screen/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: kNavigatorKey,
      initialRoute: Routes.welcome,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Welcome(),
    );
  }
}
