import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers_project/main.dart';

class HomePage2 extends ConsumerWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureNumber = ref.watch(myFutureProvider);
    final streamNumber = ref.watch(myStreamProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: futureNumber.when(
                data: (data) {
                  return Text(data.toString());
                },
                error: (e, s) => Text('Error is $e'),
                loading: () => const CircularProgressIndicator()),
          ),
          Center(
            child: streamNumber.when(
                data: (data) {
                  return Text(data.toString());
                },
                error: (e, s) => Text('Error is $e'),
                loading: () => const CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }
}
