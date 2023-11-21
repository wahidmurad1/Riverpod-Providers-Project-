import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers_project/main.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = ref.watch(numberProvider);
    final numberState = ref.watch(numberStateProvider);
    return Scaffold(
      body: Center(
        child: Text(numberState.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(numberStateProvider.notifier).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
