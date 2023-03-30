import 'package:cv_maker/createCV/create_cv.dart';
import 'package:cv_maker/createCV/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProjectInfo extends StatefulWidget {
  ProjectInfo({Key? key}) : super(key: key);

  @override
  State<ProjectInfo> createState() => _ProjectInfoState();
}

class _ProjectInfoState extends State<ProjectInfo> {
  DataProvider dataProvider = DataProvider();

  var companyNameController = TextEditingController();

  var projectTitleController = TextEditingController();

  var startDateController = TextEditingController();

  var endDateController = TextEditingController();

  var summaryController = TextEditingController();

  @override
  void didChangeDependencies() async{
    // TODO: implement didChangeDependencies
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    companyNameController.text = sharedPreferences.getString('projectCompany')??'';
    projectTitleController.text = sharedPreferences.getString('projectTitle')??'';
    startDateController.text = sharedPreferences.getString('projectStartDate')??'';
    endDateController.text = sharedPreferences.getString('projectEndDate')??'';
    summaryController.text = sharedPreferences.getString('projectSummery')??'';
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Projects',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,

          ),
        ),
        actions: [
          IconButton(
            onPressed: ()async{
              SharedPreferences sharedPrefrences = await SharedPreferences.getInstance();
              sharedPrefrences.setString('projectCompany', companyNameController.text);
              sharedPrefrences.setString('projectTitle', projectTitleController.text);
              sharedPrefrences.setString('projectStartDate', startDateController.text);
              sharedPrefrences.setString('projectEndDate', endDateController.text);
              sharedPrefrences.setString('projectSummery', summaryController.text);
              Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context){
                    return CreateCV();
                  })
              );
              // Map projectInfo ={
              //   'company': companyNameController.text,
              //   'title': projectTitleController.text,
              //   'startDate': startDateController.text,
              //   'endDate': endDateController.text,
              //   'summary':summaryController.text,
              // };
              // dataProvider.getProjectInfo(projectInfo);
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
                    Icons.propane_tank_outlined,
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
                    controller: companyNameController,
                    decoration: InputDecoration(
                      hintText: 'Company Name',
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
                    controller: projectTitleController,
                    decoration: InputDecoration(
                      hintText: 'Project Title',
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

              Row(
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

            ],

          ),
        ),
      ),
    );
  }
}
