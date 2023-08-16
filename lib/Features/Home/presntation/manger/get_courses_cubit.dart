import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/firebase_services/firestore_service.dart';
import '../../data/courses_data.dart';

part 'get_courses_state.dart';

class GetCoursesCubit extends Cubit<GetCoursesState> {
  GetCoursesCubit(this.firestoreService) : super(GetCoursesInitial());

  final FirestoreService firestoreService;

  List<CoursesModel> coursesModelList = [];


  static GetCoursesCubit get(context) => BlocProvider.of(context);

  final CollectionReference coursesCollection =
  FirebaseFirestore.instance.collection('Courses');

  Future<void> getCourses() async {
    emit(GetCoursesLoading());
    await firestoreService
        .getCollection(collectionReference: coursesCollection)
        .then((value) {
      coursesModelList = [];
      for (var doc in value.docs) {
        coursesModelList.add(CoursesModel.fromJson(
            doc as QueryDocumentSnapshot<Map<String, dynamic>>));
      }

      emit(GetCoursesSuccess(coursesModelList));
    }).catchError((error) {
      print(error.toString());
    });
  }



}
