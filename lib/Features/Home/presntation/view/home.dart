import 'package:finalproject/Features/Home/presntation/manger/get_courses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'Widget/build_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetCoursesCubit, GetCoursesState>(
        builder: (context, state) {
          if (state is GetCoursesError) {
            return Text(state.errMessage);
          } else if (state is GetCoursesSuccess) {
            return SafeArea(
                child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xFFb2b2ff),
                      Color(0xFFffffff),
                    ],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/login.png"),
                          width: 50,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                        Spacer(),
                        Icon(
                          Icons.notifications,
                          color: Colors.deepOrangeAccent,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Courses",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: state.courses.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * .33,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFFffb2b2),
                                          Color(0xFFb2b2ff),
                                        ],
                                        begin: FractionalOffset(0.0, 0.0),
                                        end: FractionalOffset(1.0, 0.0),
                                        stops: [0.0, 1.0],
                                        tileMode: TileMode.clamp),
                                  ),
                                  child: Column(
                                    children: [
                                      Image(
                                        image: NetworkImage(
                                            state.courses[index].images!),
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .2,
                                        fit: BoxFit.fill,
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  )
                ],
              ),
            ));
          }
          return Center(
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                width: 40,
                height: 40,
                color: Colors.grey.shade300,
              ),
            ),
          );
        },
      ),
    );
  }
}
