import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CommunicationState {
  final bool isLoaded;
  final bool isLoading;
  final bool isSent;
  final bool isSending;

  CommunicationState({
    @required this.isLoaded,
    @required this.isLoading,
    @required this.isSent,
    @required this.isSending,
  });

  factory CommunicationState.empty() {
    return CommunicationState(
        isLoaded: false,
        isLoading: false,
        isSent: false,
        isSending: false);
  }

  factory CommunicationState.loadFail() {
    return CommunicationState(
        isLoaded: false,
        isLoading: false,
        isSent: null,
        isSending: null);
  }

  factory CommunicationState.sendFail() {
    return CommunicationState(
        isLoaded: null,
        isLoading: null,
        isSent: false,
        isSending: false);
  }

  CommunicationState sendBtnClick({bool sendBtnClick}) {
    copyWith(
        isSending: sendBtnClick
    );
  }

  CommunicationState sendSuccess({bool sendSuccess}) {
    copyWith(
        isSent: sendSuccess
    );
  }

  CommunicationState loadBtnClick({bool loadBtnClick}) {
    copyWith(
        isLoading: loadBtnClick
    );
  }

  CommunicationState loadSuccess({bool loadSuccess}) {
    copyWith(
        isLoaded: loadSuccess
    );
  }

  CommunicationState copyWith({
    bool isLoaded,
    bool isLoading,
    bool isSent,
    bool isSending,
  }) {
    return CommunicationState(
        isLoaded: isLoaded,
        isLoading: isLoading,
        isSent: isSent,
        isSending: isSending);
    // ?? is null check operator
  }
}
