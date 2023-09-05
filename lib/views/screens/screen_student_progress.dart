import 'package:flutter/material.dart';
import 'package:portal/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class ScreenStudentProgress extends StatelessWidget {
  const ScreenStudentProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  'Please select the complete',
                  style: TextStyle(),
                ),
                Text(
                  'the progress of Students',
                  style: TextStyle(),
                ),
                TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: PortalColors.color2,
                  tabs: [
                    Tab(
                      text: 'Daily',
                    ),
                    Tab(
                      text: 'Weekly',
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Student Name...',
                    suffixIcon: Icon(
                      Icons.search_outlined,
                      color: Colors.black,
                      size: 25.sp,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Material(
                            elevation: 2,
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 0.42,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15.sp,
                                  ),
                                  Text(
                                    'ABDUL HANNAN',
                                    style: TextStyle(),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Container(
                                    height: screenHeight * 0.04,
                                    width: screenWidth * 0.4,
                                    decoration: BoxDecoration(
                                      color: PortalColors.studentProgress,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'QUIZ PROGRESS...',
                                        style: TextStyle(
                                          color:
                                              PortalColors.whiteTextFieldColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Material(
                            elevation: 2,
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 0.42,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15.sp,
                                  ),
                                  Text(
                                    'ABDUL HANNAN',
                                    style: TextStyle(),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Container(
                                    height: screenHeight * 0.04,
                                    width: screenWidth * 0.4,
                                    decoration: BoxDecoration(
                                      color: PortalColors.studentProgress,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'OVERALL PROGRESS...',
                                        style: TextStyle(
                                          color:
                                              PortalColors.whiteTextFieldColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight * 0.055,
                  width: screenWidth * 0.45,
                  decoration: BoxDecoration(
                    color: PortalColors.color2,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'UPDATE',
                      style: TextStyle(
                        color: PortalColors.whiteTextFieldColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
