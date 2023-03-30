import 'dart:io';

import 'package:cv_maker/createCV/create_cv.dart';
import 'package:cv_maker/createCV/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {

  DataProvider dataProvider = DataProvider();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var countryController = TextEditingController();
  var cityController = TextEditingController();
  var addressController = TextEditingController();
  var dateController = TextEditingController();
  var monthController = TextEditingController();
  var yearController = TextEditingController();
  var professionController = TextEditingController();
  var aboutController = TextEditingController();
  XFile? profileImage;
  String? imagePath;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() async{
    // TODO: implement didChangeDepenthdencies

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    firstNameController.text = sharedPreferences.getString('firstName')??'';
    lastNameController.text = sharedPreferences.getString('lastName')??'';
    phoneController.text = sharedPreferences.getString('phone')??'';
    emailController.text = sharedPreferences.getString('email')??'';
    countryController.text = sharedPreferences.getString('country')??'';
    cityController.text = sharedPreferences.getString('city')??'';
    addressController.text = sharedPreferences.getString('address')??'';
    dateController.text = sharedPreferences.getString('date')??'';
    monthController.text = sharedPreferences.getString('month')??'';
    yearController.text = sharedPreferences.getString('year')??'';
    professionController.text = sharedPreferences.getString('profession')??'';
    aboutController.text = sharedPreferences.getString('about')??'';
    imagePath=sharedPreferences.getString("profileImage");
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
          'Personal Info',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,

          ),
        ),
        actions: [
          IconButton(
            onPressed: ()async{
              SharedPreferences sharedprefences = await SharedPreferences.getInstance();
              sharedprefences.setString('firstName' , firstNameController.text);
              sharedprefences.setString('lastName' , lastNameController.text);
              sharedprefences.setString('phone', phoneController.text);
              sharedprefences.setString('email', emailController.text);
              sharedprefences.setString('country' , countryController.text);
              sharedprefences.setString('city', cityController.text);
              sharedprefences.setString('address', addressController.text);
              sharedprefences.setString('date', dateController.text);
              sharedprefences.setString('month', monthController.text);
              sharedprefences.setString('year', yearController.text);
              sharedprefences.setString('profession', professionController.text);
              sharedprefences.setString('about', aboutController.text);
              // Map personalInfo = {
              //   'firstName': firstNameController.text,
              //   'lastName' : lastNameController.text,
              //   'phone': phoneController.text,
              //   'email': emailController.text,
              //   'country' : cityController.text,
              //   'city': cityController.text,
              //   'address': addressController.text,
              //   'date': dateController.text,
              //   'month': monthController.text,
              //   'year': yearController.text,
              //   'profession': professionController.text,
              //   'about': addressController.text,
              //
              // };
              // dataProvider.getPersonalInfo(personalInfo);
              //
              // dataProvider.show();
              // //dataProvider.setName = personalInfo;
              // // SharedPreferences sp = await SharedPreferences.getInstance();
              // // sp.setString('firstName', firstNameController.text.toString());
              // // sp.setString('lastName', lastNameController.text.toString());
              // // firstNameController.text = sp.getString('firstName').toString();
              //
              //
              //
              // // dataProvider.getData(
              // //     firstName: firstNameController.text,
              // //     lastName: lastNameController.text,
              // // );
              Navigator.of(context).pop(
                MaterialPageRoute(builder: (context){
                  return CreateCV();
                })
              );
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
          color: Colors.blueAccent,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: width,
                    height: height*.2,
                    child: imagePath==null?CircleAvatar(
                      child: Icon(
                        Icons.account_circle,
                        size: 116,
                      ),
                    ):CircleAvatar(
                      backgroundImage: FileImage(File(imagePath!)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async{
                      profileImage = await ImagePicker().pickImage(source: ImageSource.gallery);
                      final prefs=await SharedPreferences.getInstance();
                      if(profileImage!=null){
                        imagePath=profileImage!.path;
                        prefs.setString("profileImage", profileImage!.path);
                        setState(() {

                        });
                      }
                    },
                    child: Icon(
                      Icons.edit,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                  ),
                ],
                alignment: Alignment.bottomRight,
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
                        controller: firstNameController,
                        decoration: InputDecoration(

                          hintText: 'First Name',
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
                        controller: lastNameController,
                        decoration: InputDecoration(
                          hintText: 'Last Name',
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
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
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
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
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
                        controller: countryController,
                        decoration: InputDecoration(
                          hintText: 'Country',
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
                        controller: cityController,
                        decoration: InputDecoration(
                          hintText: 'City',
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
                    controller: addressController,
                    decoration: InputDecoration(
                      hintText: 'Street Address',
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
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 4),
                    child: Container(
                      width: width*.3,
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
                        controller: dateController,
                        decoration: InputDecoration(
                          hintText: 'Date',
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
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 4),
                    child: Container(
                      width: width*.3,
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
                        controller: monthController,
                        decoration: InputDecoration(
                          hintText: 'Monnth',
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
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 4),
                    child: Container(
                      width: width*.3,
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
                        controller: yearController,
                        decoration: InputDecoration(
                          hintText: 'Year',
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
                    controller: professionController,
                    decoration: InputDecoration(
                      hintText: 'Profession',
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
                    controller: aboutController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'About Yourself',
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
        ),
      )
    );
  }


}
