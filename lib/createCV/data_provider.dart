

class DataProvider{
  // String lastname='';
  // String firstname='';
  //
  //
  // // DataProvider({required this.firstName, required this.lastName});
  //
  // String getData(
  //     {
  //       firstName,lastName,
  //     }
  //     ){
  //   this.firstname = firstName;
  //   this.lastname = lastName;
  //   // print(firstName.toString());
  //   // print(lastName.toString());
  //   return this.firstname;
  //   return this.lastname;
  //
  //
  //
  // }
  // setData(){
  //   //this.firstName = firstName;
  //   print(firstname);
  //   print(lastname);
  //   //return this.firstName;
  //
  // }
  static Map  personalInfo={};
  static Map  otherInfo={};
  static Map educationInfo = {};
  static Map projectInfo = {};
  static Map experienceInfo = {};

  // String get getName{
  //   return firstName;
  // }

   getPersonalInfo(Map personInfo){
    personalInfo = personInfo;
  }

  getOtherInfo(Map info){
    otherInfo = info;
  }

  getEducationInfo(Map info){
    educationInfo = info;
  }

  getProjectInfo(Map info){
    projectInfo = info;
  }

  getExperienceInfo(Map info){
    experienceInfo = info;
  }

  show(){
    print(personalInfo);
}


}