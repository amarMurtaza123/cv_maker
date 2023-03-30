import 'package:flutter/material.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Downloads',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,

          ),
        ),
      ),
      body: Center(
        child: Text('You didnt have any download yet'),
      ),
    );
  }
}
