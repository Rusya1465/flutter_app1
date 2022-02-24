import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/navpages/course_lesson_page/course_lesson.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: const CourseLesson());
  }
}