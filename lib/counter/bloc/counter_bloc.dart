import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keontestapp/counter/bloc/counter_event.dart';
import 'package:keontestapp/counter/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  @override
  CounterState get initialState => CounterState.empty();

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
   if (event is PageLoaded) {
     yield* _mapPageLoadedToState();
   } else if (event is IncrementBtnPressed) {
     yield* _mapIncreaseBtnPressedToState();
   } else if (event is DecrementBtnPressed) {
     yield* _mapDecreamentBtnPressedToState();
   }
  }

  Stream<CounterState> _mapPageLoadedToState() async* {
    yield state.update(count: 0);
  }

  Stream<CounterState> _mapIncreaseBtnPressedToState() async* {
    yield state.update(count: state.count + 1);
  }

  Stream<CounterState> _mapDecreamentBtnPressedToState() async* {
    yield state.update(count: state.count -1);
  }
}