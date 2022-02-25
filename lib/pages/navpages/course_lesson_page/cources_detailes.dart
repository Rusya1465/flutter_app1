import 'package:flutter/material.dart';

class CourcesDetailes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Course(),
          SizedBox(height: 10),
          Text("Видео уроки"),
        ],
      ),
    );
  }
}

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.85),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2.5,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 320,
                width: 369,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "data:image/jpeg;base64,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"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      "Python",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Icon(
                          Icons.timeline_outlined,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "4 часа назад",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.start_rounded,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "4.8",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(flex: 3),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 15,
          right: 35,
          child: Text(
            "28 уроков",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}

class VideoPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
