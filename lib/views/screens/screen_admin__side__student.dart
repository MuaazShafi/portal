import 'package:flutter/material.dart';
import 'package:portal/helpers/constants.dart';
import 'package:portal/views/screens/screen_student.dart';
import 'package:sizer/sizer.dart';

class ScreenAdminSideStudent extends StatelessWidget {
  const ScreenAdminSideStudent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
                'Batch',
                style: TextStyle(),
              ),
              SizedBox(
                height: 20.sp,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search Batch...',
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
                            'Batch 01',
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(
                            'Started:  02 JUL 2022',
                            style: TextStyle(color: Colors.black),
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScreenStudent(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            ),
                          ),
                        ),
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
