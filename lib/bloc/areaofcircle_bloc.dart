import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'areaofcircle_event.dart';

class AreaofcircleBloc extends Bloc<AreaofcircleEvent, double> {
  AreaofcircleBloc() : super(0) {
    on<CalculateAreaEvent>((event, emit) {
      final area = ( pi * event.radius * event.radius);
      emit(area);
    });
  }
}
