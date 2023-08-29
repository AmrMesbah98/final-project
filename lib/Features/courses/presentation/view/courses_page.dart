import 'package:finalproject/Features/Home/data/model_courses.dart';
import 'package:flutter/material.dart';

class CoursesDetails extends StatelessWidget {
  const CoursesDetails({super.key, required this.coursesModel});


  final CoursesModel coursesModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coursesModel.nameCourses!),),

      body: SafeArea(
        child: Column(
          children: [
            Image(
                image: NetworkImage(coursesModel.images!),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .3,
                fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            Text(" ${coursesModel.description}",style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),

            Text("By : ${coursesModel.nameInstructor}",style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),

            Text(" ${coursesModel.price}",style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}
