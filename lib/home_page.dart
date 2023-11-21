import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers_project/main.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final number = ref.watch(numberProvider);
    // final numberState = ref.watch(numberStateProvider);
    // final numbersNotifierState = ref.watch(numbersNotifierProvider);
    final numbersChangeNotifier = ref.watch(numbersChangeNotifierProvider);

    return Scaffold(
      body: Center(
        // child: Text(numberState.toString()),
        child: ListView.builder(
            itemCount: numbersChangeNotifier.numbers.length,
            itemBuilder: (context, index) {
              return Text(numbersChangeNotifier.numbers[index].toString());
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(numberStateProvider.notifier).state++;
          ref.read(numbersChangeNotifierProvider).add(6);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
