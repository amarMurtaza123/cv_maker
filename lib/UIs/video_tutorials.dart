import 'package:flutter/material.dart';

class VideoTutorials extends StatelessWidget {
  const VideoTutorials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Create Resume',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,

          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    // updateTime(index, context);
                  },
                  title: Text(
                    'Video Tutorial',
                  ),
                  leading: Container(
                    width: 41,
                    height: 41,
                    child: Center(
                      child: Text(
                        index.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red,
                    ),

                  ),
                ),
              ),
            );
          }),
    );
  }
}
