import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'create_cv.dart';
import 'data_provider.dart';

class EducationInfo extends StatefulWidget {
  EducationInfo({Key? key}) : super(key: key);

  @override
  State<EducationInfo> createState() => _EducationInfoState();
}




class _EducationInfoState extends State<EducationInfo> {
  DataProvider dataProvider = DataProvider();

  var collegeController = TextEditingController();

  var titleController = TextEditingController();

  var startDateController = TextEditingController();

  var endDateController = TextEditingController();

  var summaryController = TextEditingController();

  @override
  void didChangeDependencies() async{
    // TODO: implement didChangeDependencies
    SharedPreferences pref = await SharedPreferences.getInstance();
    collegeController.text = pref.getString('college')??'';
    titleController.text = pref.getString('title')??'';
    startDateController.text = pref.getString('startDate')??'';
    endDateController.text = pref.getString('endDate')??'';
    summaryController.text = pref.getString('summary')??'';
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Education Info',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,

            ),
          ),
          actions: [
            IconButton(
              onPressed: ()async{

                SharedPreferences sharedPrefences = await SharedPreferences.getInstance();
                sharedPrefences.setString('college', collegeController.text);
                sharedPrefences.setString('title', titleController.text);
                sharedPrefences.setString('startDate', startDateController.text);
                sharedPrefences.setString('endDate', endDateController.text);
                sharedPrefences.setString('summary', summaryController.text);

                Navigator.of(context).pop(
                    MaterialPageRoute(builder: (context){
                      return CreateCV();
                    })
                );
                // Map educationInfo ={
                //   'college': collegeController.text,
                //   'title': titleController.text,
                //   'startDate': startDateController.text,
                //   'endDate': endDateController.text,
                //   'summary':summaryController.text,
                // };
                // dataProvider.getEducationInfo(educationInfo);
              },
              icon: Icon(
                Icons.check,
                size: 31,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: height,
            width: width,
            color: Colors.blueAccent,
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height*.2,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.menu_book,
                      size: 116,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ]
                    ),
                    child: TextField(
                      controller: collegeController,
                      decoration: InputDecoration(
                        hintText: 'College/University',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,

                            )
                        ) ,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            )
                        ) ,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ]
                    ),
                    child: TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: 'Degree Title',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,

                            )
                        ) ,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            )
                        ) ,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width*.45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ]
                        ),
                        child: TextField(
                          controller: startDateController,
                          decoration: InputDecoration(
                            hintText: 'Start Date',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1,

                                )
                            ) ,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                )
                            ) ,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width*.45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ]
                        ),
                        child: TextField(
                          controller: endDateController,
                          decoration: InputDecoration(
                            hintText: 'End Date',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1,

                                )
                            ) ,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                )
                            ) ,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    height: height*.15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ]
                    ),
                    child: TextField(
                      controller: summaryController,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Summary',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,

                            )
                        ) ,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            )
                        ) ,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 45,),




              ],

            ),
          ),

        ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 19.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.close,
                size: 45,
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                shape: CircleBorder(),

              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.add_circle_outline_sharp,
                size: 45,
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                shape: CircleBorder(),

              ),
            ),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
