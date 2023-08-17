part of 'get_courses_cubit.dart';

@immutable
abstract class GetCoursesState {}

class GetCoursesInitial extends GetCoursesState {}

class GetCoursesLoading extends GetCoursesState {}
class GetCoursesSuccess extends GetCoursesState {
  final List<CoursesModel>courses;
  GetCoursesSuccess(this.courses);

}
class GetCoursesError extends GetCoursesState {
  final String errMessage;
  GetCoursesError(this.errMessage);
}
