part of 'areaofcircle_bloc.dart';

sealed class AreaofcircleEvent extends Equatable {
  const AreaofcircleEvent();

  @override
  List<Object> get props => [];
}

class CalculateAreaEvent extends AreaofcircleEvent{
  final double radius;

  const CalculateAreaEvent(this.radius);
}
