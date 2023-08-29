import 'package:cloud_firestore/cloud_firestore.dart';


class CoursesModel
{
  String? nameInstructor;
  String? nameCourses;
  String? id;
  String? description;
  String? images;
  String? price;


  CoursesModel({ this.nameCourses,this.images,this.price,this.nameInstructor,this.id,this.description});


  CoursesModel.fromJson(QueryDocumentSnapshot<Map<String, dynamic>> json) {
    id = json.id;
    nameCourses = json.data()['nameCourses'];
    description = json.data()['description'];
    nameInstructor = json.data()['nameInstructor'];
    images = json.data()['images'];
    price = json.data()['price'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nameCourses': nameCourses,
      'nameInstructor': nameInstructor,
      'images': images,
      'description': description,
      'price': price,

    };
  }



}


















//
// class CoursesModel {
//   String? id;
//   String? nameCourse;
//   String? nameInstructor;
//   String? images;
//   String? description;
//   String? moreDetails;
//   String? price;
//   String? priceHalf;
//   String? link;
//   String? rate;
//   List? learn;
//
//
//   CoursesModel({
//     this.id,
//     this.nameCourse,
//     this.nameInstructor,
//     this.images,
//     this.description,
//     this.moreDetails,
//     this.price,
//     this.priceHalf,
//     this.link,
//     this.rate,
//     this.learn
//
//   });
//
//   CoursesModel.fromJson(QueryDocumentSnapshot<Map<String, dynamic>> json) {
//     id = json.id;
//     nameCourse = json.data()['nameCourse'];
//     nameInstructor = json.data()['nameInstructor'];
//     images = json.data()['images'];
//     description = json.data()['description'];
//     moreDetails = json.data()['moreDetails'];
//     price = json.data()['price'];
//     priceHalf = json.data()['priceHalf'];
//     link = json.data()['link'];
//     learn = json.data()['learn'];
//     rate = json.data()['rate'];
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'nameCourse': nameCourse,
//       'nameInstructor': nameInstructor,
//       'images': images,
//       'description': description,
//       'moreDetails': moreDetails,
//       'price': price,
//       'priceHalf': priceHalf,
//       'link': link,
//       'learn': learn,
//       'rate': rate,
//     };
//   }
// }