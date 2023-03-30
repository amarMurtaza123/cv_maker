import 'package:flutter/material.dart';

class LetterOutput extends StatefulWidget {
  const LetterOutput({Key? key}) : super(key: key);

  @override
  State<LetterOutput> createState() => _LetterOutputState();
}

class _LetterOutputState extends State<LetterOutput> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Final Letter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,

          ),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: width,
                height: height*.15,
                color: Colors.grey,
                child: Row(
                  children: [
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
