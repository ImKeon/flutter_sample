import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:keontestapp/model/communication.dart';

@immutable
abstract class CommunicationEvent extends Equatable {
  CommunicationEvent([List props = const []]);
}

class PageLoaded extends CommunicationEvent {
  @override
  String toString() {
    return 'page Loaded';
  }

  @override
  List<Object> get props => [];
}

class SendButtonClick extends CommunicationEvent {

  Communication communication;

  SendButtonClick({
    @required this.communication
  });

  @override
  String toString() {
    // TODO: implement toString
    return "SendButton Click";
  }

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}

class LoadButtonClick extends CommunicationEvent {

  @override
  String toString() {
    // TODO: implement toString
    return "LoadButton Click";
  }

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}