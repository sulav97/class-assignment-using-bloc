import 'package:bloc_project/bloc/areaofcircle_bloc.dart';
import 'package:bloc_project/bloc/simpleinterest_bloc.dart';
import 'package:bloc_project/bloc/student_bloc.dart';
import 'package:bloc_project/view/area_circle_bloc_view.dart';
import 'package:bloc_project/view/simple_interest_bloc_view.dart';
import 'package:bloc_project/view/student_bloc_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
      this._simpleinterestBloc, this._areaofcircleBloc, this._studentBloc)
      : super(null);

  final SimpleinterestBloc _simpleinterestBloc;
  final AreaofcircleBloc _areaofcircleBloc;
  final StudentBloc _studentBloc;

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaofcircleBloc,
          child: AreaCircleBlocView(),
        ),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleinterestBloc,
          child: SimpleInterestBlocView(),
        ),
      ),
    );
  }

  void openStudentListView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentBloc,
          child: StudentBlocView(),
        ),
      ),
    );
  }
}
