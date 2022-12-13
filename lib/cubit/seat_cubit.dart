import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  // method ketika memilih seat
  void selectSeat(String id) {
    print('prev state : $state');
    state.add(id); //memasukkan id ke list
    emit(state);
    print('new state : $state');
  }
}
