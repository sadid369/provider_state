import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/home_page.dart';
import 'package:provider_state/my_provider_class.dart';
import 'package:provider_state/my_second_provider_class.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyProviderClass()),
        ChangeNotifierProvider(create: (context) => MySecondProviderClass()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider State management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
