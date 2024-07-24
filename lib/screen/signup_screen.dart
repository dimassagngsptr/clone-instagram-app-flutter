import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  final VoidCallback show;
  const SignupScreen(this.show, {super.key});

  @override
  State<SignupScreen> createState() => _SignupState();
}

class _SignupState extends State<SignupScreen> {
  final _email = TextEditingController();
  FocusNode _emailF = FocusNode();
  final _password = TextEditingController();
  FocusNode _passwordF = FocusNode();
  final _username = TextEditingController();
  FocusNode _usernameF = FocusNode();
  final _confirmPassword = TextEditingController();
  FocusNode _confirmPasswordF = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(width: 90.w, height: 100.h),
            Center(
              child: Image.asset('images/logo.jpg'),
            ),
            SizedBox(
              height: 50.h,
            ),
            Center(
                child: CircleAvatar(
              radius: 32.r,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: const AssetImage('images/person.png'),
            )),
            SizedBox(
              height: 50.h,
            ),
            Textfield(_email, _emailF, "Email", Icons.email),
            SizedBox(
              height: 12.h,
            ),
            Textfield(_username, _usernameF, "Username", Icons.person),
            SizedBox(
              height: 12.h,
            ),
            Textfield(_password, _passwordF, "Password", Icons.lock),
            SizedBox(
              height: 10.h,
            ),
            Textfield(_confirmPassword, _confirmPasswordF, "Confirm Password",
                Icons.lock),
            SizedBox(
              height: 10.h,
            ),
            // Forgot(),
            SizedBox(
              height: 10.h,
            ),
            Login(),
            SizedBox(
              height: 10.h,
            ),
            Signup()
          ],
        ),
      ),
    );
  }

  Padding Signup() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Have an account? ",
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: widget.show,
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }

  Padding Login() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44.h,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10.r)),
        child: Text(
          "Sign up",
          style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget Forgot() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Text(
        "Forgot your password?",
        style: TextStyle(
            fontSize: 13.sp, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding Textfield(TextEditingController controll, FocusNode focusNode,
      String typename, IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: TextField(
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
          controller: controll,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: typename,
            prefixIcon: Icon(
              icon,
              color: focusNode.hasFocus ? Colors.black : Colors.grey[600],
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(
                width: 2.w,
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                width: 2.w,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
