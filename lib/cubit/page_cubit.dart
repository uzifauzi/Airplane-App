import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class PageCubit extends Cubit<int> {
  //homepage[0], transactionpage[1], walletpage[2], settingpage[3]
  PageCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}
