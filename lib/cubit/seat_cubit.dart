import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  // method ketika memilih seat
  void selectSeat(String id) {
    print('prev state : $state');
    if (!isSelected(id)) {
      state.add(id); //memasukkan id ke list
    } else {
      state.remove(id);
    }
    emit(state);
    print('new state : $state');
  }

  //method untuk mengecek seat apakah sudah dipilih/belum
  bool isSelected(String id) {
    // jika =-1 dia tidak ada, selain itu dia bisa masuk list
    int index = state.indexOf(id);
    print('index: $index');
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
