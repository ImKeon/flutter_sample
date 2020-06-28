import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class CounterEvent extends Equatable {
  CounterEvent([List props = const []]);
}

class PageLoaded extends CounterEvent {
  @override
  String toString() {
    return 'page Loaded';
  }

  @override
  List<Object> get props => [];
}

class IncrementBtnPressed extends CounterEvent {
  @override
  String toString() {
    return "Increment button pressed";
  }

  @override
  List<Object> get props => [];
}

class DecrementBtnPressed extends CounterEvent {
  @override
  String toString() {
    return "Decrement button pressed";
  }

  @override
  List<Object> get props => [];
}
