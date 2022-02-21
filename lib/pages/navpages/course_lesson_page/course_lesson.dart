import 'package:flutter/material.dart';

class CourseLesson extends StatefulWidget {
  const CourseLesson({Key? key}) : super(key: key);

  @override
  State<CourseLesson> createState() => _CourseLessonState();
}

class _CourseLessonState extends State<CourseLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('01 Введение'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: const Center(child: Text('Python')),
    );
  }
}
