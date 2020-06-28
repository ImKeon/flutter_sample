import 'package:flutter/material.dart';

class CounterState {
  final int count;

  CounterState({@required this.count});

  factory CounterState.empty() {
    return CounterState(count: 0);
  }

  CounterState update({
    int count,
  }) {
    return copyWith(count: count);
  }

  CounterState copyWith({int count}) {
    // ?? is null check operator
    return CounterState(count: count ?? this.count);
  }

}