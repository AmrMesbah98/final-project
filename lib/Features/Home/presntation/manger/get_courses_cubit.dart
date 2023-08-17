import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/firebase_services/firestore_service.dart';
import '../../data/model_courses.dart';

part 'get_courses_state.dart';

class GetCoursesCubit extends Cubit<GetCoursesState> {
  GetCoursesCubit(this.fireStoreService) : super(GetCoursesInitial());

  final FirestoreService fireStoreService;

  List<CoursesModel> coursesModelList = [];

  final CollectionReference getCoursesCollection =
  FirebaseFirestore.instance.collection('Courses');

  static GetCoursesCubit get(context) => BlocProvider.of(context);


  Future<void> getCourses() async {
    emit(GetCoursesLoading());
    await fireStoreService
        .getCollection(collectionReference: getCoursesCollection)
        .then((value) {
      coursesModelList = [];
      for (var doc in value.docs) {
        coursesModelList.add(CoursesModel.fromJson(
            doc as QueryDocumentSnapshot<Map<String, dynamic>>));
      }

      emit(GetCoursesSuccess(coursesModelList));
    }).catchError((error) {
      emit(GetCoursesError(error));
      print(error.toString());
    });
  }


}
