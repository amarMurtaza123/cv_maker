import 'package:cv_maker/createCV/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CVOutput extends StatefulWidget {
  //final dataProvider = DataProvider();
  CVOutput({Key? key}) : super(key: key);

  @override
  State<CVOutput> createState() => _CVOutputState();
}

class _CVOutputState extends State<CVOutput> {
   String? firstName,lastName,phoneNumber,emailAddress,country,city,address,date,month, year, profession,about; //Personal Info
   String? college,degree,educationStartDate,educationEndDate,educationSummary;   //Education Info
   String? companyName, jobTitles,jobStartDate,jobEndDate,jobSummary; //Work Info
   String? projectCompanyName,projectTitle,projectStartDate,projectEndDate,projectSummary; //project Info
   String? skills,language,interest,linkedIn,facebook,twitter,blog,other,references,awards; //Additional Info


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies()async {
    // TODO: implement didChangeDependencies
    final prefs=await SharedPreferences.getInstance();
    firstName=prefs.getString("firstName")??"";
    lastName=prefs.getString("lastName")??"";
    phoneNumber=prefs.getString("phone")??"";
    emailAddress=prefs.getString("email")??"";
    country=prefs.getString("country")??"";
    city=prefs.getString("city")??"";
    address=prefs.getString("address")??"";
    date=prefs.getString("date")??"";
    month=prefs.getString("month")??"";
    year=prefs.getString("year")??"";
    profession=prefs.getString("profession")??"";
    about=prefs.getString("about")??"";
    college=prefs.getString("college")??"";
    degree=prefs.getString("title")??"";
    educationStartDate=prefs.getString("startDate")??"";
    educationEndDate=prefs.getString("endDate")??"";
    educationSummary=prefs.getString("summary")??"";
    companyName=prefs.getString("companyName")??"";
    jobTitles=prefs.getString("jobTitle")??"";
    jobStartDate=prefs.getString("workStartDate")??"";
    jobEndDate=prefs.getString("workEndDate")??"";
    jobSummary=prefs.getString("workSummary")??"";
    projectCompanyName=prefs.getString("projectCompany")??"";
    projectTitle=prefs.getString("projectTitle")??"";
    projectStartDate=prefs.getString("projectStartDate")??"";
    projectEndDate=prefs.getString("projectEndDate")??"";
    projectSummary=prefs.getString("projectSummary")??"";
    skills=prefs.getString("skills")??"";
    language=prefs.getString("language")??"";
    interest=prefs.getString("interest")??"";
    linkedIn=prefs.getString("linkedIn")??"";
    facebook=prefs.getString("facebook")??"";
    twitter=prefs.getString("twitter")??"";
    blog=prefs.getString("blog")??"";
    other=prefs.getString("other")??"";
    references=prefs.getString("reference")??"";
    awards=prefs.getString("award")??"";

    setState(() {

    });
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Final Resume',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,

          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              //print(dataProvider.getName);

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
        child: Column(
          children: [
            Container(
              width: width,
              height: height*.15,
              color: Colors.grey,
              child: Row(
                children: [
                  Text(firstName??'',),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
