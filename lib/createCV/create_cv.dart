import 'package:cv_maker/createCV/additional_info.dart';
import 'package:cv_maker/createCV/cv_output.dart';
import 'package:cv_maker/createCV/education_info.dart';
import 'package:cv_maker/pdf/pdf_api.dart';
import 'package:cv_maker/pdf/pdf_cv_output.dart';
import 'package:cv_maker/createCV/personal_info.dart';
import 'package:cv_maker/createCV/project_info.dart';
import 'package:cv_maker/createCV/work_experience.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateCV extends StatelessWidget {

  
  const CreateCV({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Resume',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,

          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.account_circle,
              size: 31,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                width: width,
                color: CupertinoColors.systemGrey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 11.0,horizontal: 8),
                  child: const Text(
                    'Section',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return PersonalInfo();
                      }));
                },
                title: Text(
                  'Personal Information',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return EducationInfo();
                      }));
                },
                title: Text(
                  'Education',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return WorkExperience();
                      }));
                },
                title: Text(
                  'Work Experience',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return ProjectInfo();
                      }));
                },
                title: Text(
                  'Project',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return AdditionalInfo();
                      }));
                },
                title: Text(
                  'Attitional Information',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Add Signature',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            SizedBox(height: 45,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

              ],
            ),
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: () async{
           final data = SharedPreferences.getInstance();
           final pdfFile = await PdfCvOutput.generate(data);
           PdfApi.openFile(pdfFile);
         },
         child: Icon(
           Icons.remove_red_eye_outlined,
           size: 49,

         ),
       ),
    );
  }
}
