import 'package:equatable/equatable.dart';

class StudentModel extends Equatable{
  final String name;
  final int age;
  final String address;

  const StudentModel(this.name, this.age, this.address);

  @override
  List<Object> get props => [name, age, address];
}