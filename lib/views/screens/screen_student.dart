import 'package:flutter/material.dart';
import 'package:portal/views/screens/screen_student_progress.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/constants.dart';

class ScreenStudent extends StatelessWidget {
  const ScreenStudent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Please select the Student',
                style: TextStyle(),
              ),
              Text(
                'name',
                style: TextStyle(),
              ),
              SizedBox(
                height: 20.sp,
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
                  itemCount: 6,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 50.sp,
                      child: Card(
                        child: ListTile(
                          title: Text(
                            'ABDUL HANNAN',
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(
                            'Joined:  02 JUL 2022',
                            style: TextStyle(color: Colors.black),
                          ),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenStudentProgress(),
                    ),
                  );
                },
                child: Container(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.7,
                  decoration: BoxDecoration(
                    color: PortalColors.color2,
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Center(
                    child: Text(
                      'MANAGE PROGRESS',
                      style: TextStyle(
                        color: PortalColors.whiteTextFieldColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
