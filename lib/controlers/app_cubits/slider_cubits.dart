
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderCubit extends Cubit<int>{
  SliderCubit(super.initialState);

  getSlideIndex({required index}){
   emit(index);
  }
}