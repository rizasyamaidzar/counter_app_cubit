import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  // initial state
  CounterCubit() : super(CounterState(conterValue: 0));

  void increment() => emit(CounterState(conterValue: state.conterValue+1));
  void decrement(){
  if(state.conterValue>0){
  emit(CounterState(conterValue: state.conterValue-1));
  }

  }  
}
