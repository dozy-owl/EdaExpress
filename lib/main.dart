import 'package:flutter/material.dart';
import 'package:taskills_qualification/router/app_router.dart';

void main()  {
  
  runApp(
     const MyApp(),
  
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().config(),
    );
  }
}
