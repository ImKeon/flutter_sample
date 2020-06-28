import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keontestapp/constants/constants.dart';
import 'package:keontestapp/data_communication/bloc/communication_event.dart';
import 'package:keontestapp/data_communication/bloc/communication_state.dart';
import 'package:keontestapp/model/communication.dart';

class CommunicationBloc extends Bloc<CommunicationEvent, CommunicationState> {

  @override
  // TODO: implement initialState
  CommunicationState get initialState => CommunicationState.empty();

  @override
  Stream<CommunicationState> mapEventToState(
      CommunicationEvent communicationEvent) async* {
//    if (communicationEvent is PageLoaded) {
//      yield* _mapPageLoadedToState();
//    } else
    if (communicationEvent is SendButtonClick) {
      yield* _mapSendButtonClickToState(communicationEvent.communication);
    } else if (communicationEvent is LoadButtonClick) {
      yield* _mapLoadButtonClick();
    }
  }


  Stream<CommunicationState> _mapSendButtonClickToState(
      Communication communication) async* {
    try {
      String body = json.encode(communication);
      final response = await postReq('/api/communication', body);
      if (response != null) {
        yield state.sendSuccess(sendSuccess: true);
      }
    } catch (e) {
      print("]-----] Send error [-----[ ${e}");
    }
  }

  Stream<CommunicationState> _mapLoadButtonClick() async* {
    try {
      final response = await getReq('/api/communication');
      if (response != null) {
        yield* response;
      } else {
        print("]-----] Response를 받지 못했습니다. [-----[");
      }
    } catch (e) {
      print("]-----] Load error [-----[ ${e}");
    }
  }

  Future<dynamic> getReq(String apiURL) async {
    try {
      Response response;
      Dio dio = new Dio();
      response = await dio.get(apiUrl + apiURL);
      print("]-----]Request Data : " + response.data.toString() + "[-----[");
    } catch (e) {
      print("]-----] Load error [-----[ ${e}");
    }
  }

  Future<dynamic> postReq(String apiURL, String body) async {
    try {
      Response response;
      Dio dio = new Dio();
      response = await dio.post(apiUrl + apiURL, data: body);
      print("]-----]Post Data : " + response.data.toString() + "[-----[");
      return response;
    } catch (e) {
      print("]-----] Send error [-----[ ${e}");
    }
  }
}
