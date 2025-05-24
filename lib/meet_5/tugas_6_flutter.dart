import 'package:flutter/material.dart';

class Tugas6DesainFigma extends StatefulWidget {
  const Tugas6DesainFigma({super.key});

  @override
  State<Tugas6DesainFigma> createState() => _Tugas6DesainFigmaState();
}

class _Tugas6DesainFigmaState extends State<Tugas6DesainFigma> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    // var appBar = AppBar(
    //   leading: Padding(
    //     padding: const EdgeInsets.only(left: 24),
    //     child: Icon(Icons.arrow_back_ios),
    //   ),
    //   title: Padding(child: Text('Login')),
    //   titleTextStyle: TextStyle(
    //     fontSize: 18,
    //     fontWeight: FontWeight.bold,
    //     color: Color(0xff262626),
    //   ),

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.red,
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(width: 24),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff262626),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 40),
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 16),
                Text(
                  'Sign in to your account',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32),
                Text(
                  'Email Address',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'helloteja@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff0F0D23),
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff888888),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: ' at least twelve characters long',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff0F0D23),
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff888888),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 16),
                    Row(children: [Text('Forgot Password')]),
                  ],
                ),
              ],
            ),
            // TextField(
            //   obscureText: isPasswordVisible ? false : true,
            //   decoration: InputDecoration(
            //     suffixIcon: IconButton(
            //       onPressed: () {
            //         setState(() {
            //           isPasswordVisible = !isPasswordVisible;
            //         });
            //       },
            //       icon: Icon(
            //         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
