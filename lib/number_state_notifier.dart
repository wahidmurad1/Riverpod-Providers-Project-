import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumberStateNotifier extends StateNotifier<List<int>> {
  NumberStateNotifier() : super([]);
  void add(int number) {
    state = [...state, number];
  }

  void delete(int number) {
    state = [
      for (final loopNumber in state)
        if (number != loopNumber) loopNumber,
    ];
  }
}
