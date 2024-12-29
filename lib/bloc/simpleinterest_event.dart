part of 'simpleinterest_bloc.dart';

sealed class SimpleinterestEvent extends Equatable {
  const SimpleinterestEvent();

  @override
  List<Object> get props => [];
}

class CalculateInterestEvent extends SimpleinterestEvent{
  final double principal;
  final double rate;
  final double time;

  const CalculateInterestEvent(this.principal, this.rate, this.time);
}
