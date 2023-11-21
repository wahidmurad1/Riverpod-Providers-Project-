import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers_project/home_page.dart';
import 'package:riverpod_providers_project/number_state_notifier.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

final numberProvider = Provider<int>((ref) {
  return 20;
});
final numberStateProvider = StateProvider<int>((ref) {
  return 100;
});
final numbersNotifierProvider = StateNotifierProvider<NumberStateNotifier, List<int>>((ref) => NumberStateNotifier());
