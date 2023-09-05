import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/helpers/constants.dart';
import 'package:sizer/sizer.dart';

import 'screen_home.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  bool obscureText = true;
  IconData obscureIcon = Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: -80,
                    left: -30,
                    child: Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.5,
                      decoration: BoxDecoration(
                        color: PortalColors.lightBlueColor.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: -80,
                    child: Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.5,
                      decoration: BoxDecoration(
                        color: PortalColors.lightBlueColor.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 50),
                    child: Image(
                      image: AssetImage('assets/images/login.png'),
                    ).paddingSymmetric(horizontal: 12.h),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Micro',
                        style: TextStyle(
                          color: PortalColors.lightBlueColor,
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        'Programers',
                        style: TextStyle(
                          color: PortalColors.darkBlueColor,
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.sp,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ID',
                      // hintText: '12DER42323ASA',
                      hintStyle: TextStyle(
                        color: PortalColors.greyHintTextColor,
                      ),
                      labelStyle: TextStyle(
                        color: PortalColors.lightBlueColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      fillColor: PortalColors.whiteTextFieldColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  TextField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          obscureText = !obscureText;

                          setState(() {});
                        },
                        child: Icon(
                          obscureText
                              ? obscureIcon = Icons.visibility
                              : Icons.visibility_off,
                          color: PortalColors.iconColor,
                        ),
                      ),
                      labelText: 'Phone Number',
                      // hintText: '12DER42323ASA',
                      hintStyle: TextStyle(
                        color: PortalColors.greyHintTextColor,
                      ),
                      labelStyle: TextStyle(
                        color: PortalColors.lightBlueColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      fillColor: PortalColors.whiteTextFieldColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.3,
                      decoration: BoxDecoration(
                        color: PortalColors.color2,
                        borderRadius: BorderRadius.circular(23),
                      ),
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Powered by ',
                        style: TextStyle(
                          color: PortalColors.grey,
                          fontSize: 15.sp,
                        ),
                      ),
                      Text(
                        'MICROPROGRAMERS',
                        style: TextStyle(
                          color: PortalColors.color2,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
