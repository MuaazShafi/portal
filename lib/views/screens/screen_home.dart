import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/constants.dart';
import 'screen_admin__side__student.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 40),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'MUBASHIR',
                              style: TextStyle(),
                            ),
                            Text(
                              ' HUSSAIN',
                              style: TextStyle(
                                color: PortalColors.nameColor2,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Text(
                            'Admin',
                            style: TextStyle(
                              color: PortalColors.adminColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.10,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PortalColors.profileBorder,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/images/profile.png'),
                        height: screenHeight * 0.09,
                        width: screenWidth * 0.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              endIndent: 70,
              indent: 50,
            ),
            SizedBox(
              height: 15.sp,
            ),
            Text(
              'Welcome back!',
              style: TextStyle(),
            ),
            SizedBox(
              height: 40.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenAdminSideStudent(),
                      ),
                    );
                  },
                  child: Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(23),
                    child: Container(
                      height: screenHeight * 0.22,
                      width: screenHeight * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(23),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/student.png',
                            ),
                            height: screenHeight * 0.1,
                            width: screenWidth * 0.1,
                          ),
                          Text(
                            'Students',
                            style: TextStyle(),
                          ),
                          Row(
                            children: [
                              Text(
                                'View Students Detail',
                                style: TextStyle(),
                              ),
                              Icon(Icons.navigate_next_outlined),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(23),
                  child: Container(
                    height: screenHeight * 0.22,
                    width: screenHeight * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/developers.png',
                          ),
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.1,
                        ),
                        Text(
                          'Developers',
                          style: TextStyle(),
                        ),
                        Row(
                          children: [
                            Text(
                              'View Developers Detail',
                              style: TextStyle(),
                            ),
                            Icon(Icons.navigate_next_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(23),
                  child: Container(
                    height: screenHeight * 0.22,
                    width: screenHeight * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/internships.png',
                          ),
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.1,
                        ),
                        Text(
                          'Internships',
                          style: TextStyle(),
                        ),
                        Row(
                          children: [
                            Text(
                              'View Interns Details',
                              style: TextStyle(),
                            ),
                            Icon(Icons.navigate_next_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(23),
                  child: Container(
                    height: screenHeight * 0.22,
                    width: screenHeight * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/manage.png',
                          ),
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.1,
                        ),
                        Text(
                          'Manage',
                          style: TextStyle(),
                        ),
                        Row(
                          children: [
                            Text(
                              'Manage Users Details',
                              style: TextStyle(),
                            ),
                            Icon(Icons.navigate_next_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: PortalColors.color2,
        selectedItemColor: PortalColors.whiteTextFieldColor,
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline_sharp),
            label: 'Light',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'add',
          ),
        ],
      ),
    );
  }
}
