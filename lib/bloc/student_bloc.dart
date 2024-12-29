import 'package:bloc_project/model/student_model.dart';
import 'package:bloc_project/model/student_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'student_event.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentState.initial()) {
    on<AddStudentEvent>((event, emit) {
      final newStudent = StudentModel(event.name, event.age, event.address);

      final updatedStudents = List<StudentModel>.from(state.lstStudents)
        ..add(newStudent);

      emit(state.copyWith(lstStudents: updatedStudents));
    });
  }
}
