import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'simpleinterest_event.dart';

class SimpleinterestBloc extends Bloc<SimpleinterestEvent, double> {
  SimpleinterestBloc() : super(0) {
    on<CalculateInterestEvent>((event, emit) {
      final interest = (event.principal * event.time * event.rate )/100;
      emit(interest);
    });
  }
}
