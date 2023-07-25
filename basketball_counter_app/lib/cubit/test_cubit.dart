import 'package:flutter_bloc/flutter_bloc.dart';
import 'test_state.dart';

class testCubit extends Cubit<testState> {
  testCubit() : super(testInitial());



  void testIncrement() {
    emit(testLoading());
  }


}