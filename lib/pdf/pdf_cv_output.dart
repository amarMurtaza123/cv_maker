import 'dart:io';

import 'package:cv_maker/pdf/pdf_api.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PdfCvOutput{

  static Future<File> generate(Future<SharedPreferences> data) async{
    final pdf = Document();

    var prefs = await SharedPreferences.getInstance();
    //print(prefs.getString('firstName')??'Nothing to Display');
    pdf.addPage(MultiPage(
        build: (context)=>[
          buildTitle(prefs),
        ],
    ));


    return PdfApi.saveDocument(name: 'my_cv.pdf',pdf:pdf);

  }

  static Widget buildTitle(var prefs){
    //var prefrences = prefs;
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text(
          //   'CV',
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          //
          // ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                prefs.getString('firstName')??'',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

              ),
              Text(
                prefs.getString('lastName')??'',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

              ),
            ]
          )
        ]
    );
    //   Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //
    //
    //     SizedBox(height: 0.8 * PdfPageFormat.cm),
    //
    //   ],
    // );
  }
}