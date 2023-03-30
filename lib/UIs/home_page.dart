import 'package:cv_maker/UIs/downloads.dart';
import 'package:cv_maker/UIs/video_tutorials.dart';
import 'package:cv_maker/createCV/create_cv.dart';
import 'package:cv_maker/createLettter/create_cover_letter.dart';
import 'package:cv_maker/createLettter/create_letter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CV Maker',
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
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.account_circle,
                      size: 65,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 31.0),
                    child: Text(
                        'Your Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  Text(
                    'Login with Google or Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.download_outlined,size: 31,),
              title: const Text(
                'Downloads',
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return Downloads();
                    }));
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.message,size: 31,),
              title: const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(thickness: 1,),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: const Text(
                'Tutorial',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.touch_app_sharp,size: 31,),
              title: const Text(
                'Create Resume Tour',
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.video_settings_outlined,size: 31,),
              title: const Text(
                'Feature Video Tutorial',
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return VideoTutorials();
                    }));
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.copy,size: 31,),
              title: const Text(
                'App Introduction',
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(thickness: 1,),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: const Text(
                'Others',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.share,size: 31,),
              title: const Text(
                'Invite Friends',
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,size: 31,),
              title: const Text(
                'App Settings',
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'TOP FEATURES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.blue
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return CreateCV();
                            }));
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: width*.45,
                            height: height*.19,
                            child: Center(
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 49,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue
                            ),
                          ),
                          Container(
                            color: CupertinoColors.systemBlue,

                            width: width*.45,
                            child: Text(
                              'Create CV or Resume',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19
                              ),
                            ),
                          ),
                        ],
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return CreateCoverLetter(letterType: 'Cover Letter', color: Colors.deepPurple,);
                            }));
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: width*.45,
                            height: height*.19,
                            child: Center(
                              child: Icon(
                                Icons.feed,
                                size: 49,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue
                            ),
                          ),
                          Container(
                            color: CupertinoColors.systemBlue,

                            width: width*.45,
                            child: Text(
                              'Create Cover Letter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 19,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ],
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return Letter(letterType: 'Resignation Letter', color: Colors.red);
                            }));
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: width*.45,
                            height: height*.19,
                            child: const Center(
                              child: Icon(
                                Icons.mail_outlined,
                                color: Colors.white,
                                size: 49,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue
                            ),
                          ),
                          Container(
                            color: CupertinoColors.systemBlue,

                            width: width*.45,
                            child: Text(
                              'Create Resignation Letter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19
                              ),
                            ),
                          ),
                        ],
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return Letter(letterType: 'Promotion Letter', color: Colors.green);
                            }));
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: width*.45,
                            height: height*.19,
                            child: Center(
                              child: Icon(
                                Icons.mark_as_unread_outlined,
                                size: 49,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue
                            ),
                          ),
                          Container(
                            color: CupertinoColors.systemBlue,

                            width: width*.45,
                            child: Text(
                              'Create Promotion Letter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ],
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Text(
                  'Customer Support',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.blue
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return VideoTutorials();
                            }));
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: width*.45,
                            height: height*.19,
                            child: Center(
                              child: Icon(
                                Icons.video_call_outlined,
                                color: Colors.white,
                                size: 49,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue
                            ),
                          ),
                          Container(
                            color: CupertinoColors.systemBlue,

                            width: width*.45,
                            child: Text(
                              'Video Tutorial',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19
                              ),
                            ),
                          ),
                        ],
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context){
                      //         return CreateCV();
                      //       }));
                      // },
                      child: Stack(
                        children: [
                          Container(
                            width: width*.45,
                            height: height*.19,
                            child: Center(
                              child: Icon(
                                Icons.message,
                                size: 49,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue
                            ),
                          ),
                          Container(
                            color: CupertinoColors.systemBlue,

                            width: width*.45,
                            child: Text(
                              'Send Feedback or Problem',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ],
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Text(
                  'Others',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.blue
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return Downloads();
                            }));
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: width*.45,
                            height: height*.19,
                            child: Center(
                              child: Icon(
                                Icons.download_outlined,
                                color: Colors.white,
                                size: 49,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue
                            ),
                          ),
                          Container(
                            color: CupertinoColors.systemBlue,

                            width: width*.45,
                            child: Text(
                              'Download',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19
                              ),
                            ),
                          ),
                        ],
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context){
                      //         return CreateCV();
                      //       }));
                      // },
                      child: Stack(
                        children: [
                          Container(
                            width: width*.45,
                            height: height*.19,
                            child: Center(
                              child: Icon(
                                Icons.interpreter_mode,
                                size: 49,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue
                            ),
                          ),
                          Container(
                            color: CupertinoColors.systemBlue,

                            width: width*.45,
                            child: Text(
                              'Job Interview Questions',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ],
                        alignment: Alignment.bottomCenter,
                      ),
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
