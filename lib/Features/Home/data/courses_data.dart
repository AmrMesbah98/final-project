import 'package:cloud_firestore/cloud_firestore.dart';

class CoursesModel
{
  String? id ;
  String? images ;
  String? nameCourses ;
  String? nameInstructor ;
  String? price ;


  CoursesModel({this.id,this.images,this.nameInstructor,this.price,this.nameCourses});


  CoursesModel.fromJson(QueryDocumentSnapshot<Map<String, dynamic>> json) {
    id = json.id;
    images = json.data()['images'];
    nameCourses = json.data()['nameCourses'];
    nameInstructor = json.data()['nameInstructor'];
    price = json.data()['price'];


  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'images': images,
      'nameCourses': nameCourses,
      'nameInstructor': nameInstructor,
      'price': price,

    };
  }

}