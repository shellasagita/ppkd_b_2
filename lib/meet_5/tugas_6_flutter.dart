import 'package:flutter/material.dart';

class Tugas6DesainFigma extends StatefulWidget {
  const Tugas6DesainFigma({super.key});

  @override
  State<Tugas6DesainFigma> createState() => _Tugas6DesainFigmaState();
}

class _Tugas6DesainFigmaState extends State<Tugas6DesainFigma> {
  bool isPasswordVisible = false;

  get onPressed => null;
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

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              SizedBox(height: 40),
              Text(
                'Welcome Back',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              Text(
                'Sign in to your account',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
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
                  hintText: 'shellasagitaa@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(width: 1, color: Color(0xff0F0D23)),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(width: 1, color: Color(0xff888888)),
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
                obscureText: isPasswordVisible ? false : true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: ' at least twelve characters long',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(width: 1, color: Color(0xff0F0D23)),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(width: 1, color: Color(0xff888888)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFEA9459),
                    ),
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff283FB1),
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 41,
                          vertical: 20,
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                    selectionColor: Color(0XFF888888),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFEA9459),
                      ),
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ],
              ),
              SizedBox(height: 24),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(child: Divider(thickness: 1)),
                      Text(
                        'Or Sign In With',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                        selectionColor: Color(0XFF888888),
                      ),
                      Expanded(child: Divider(thickness: 1)),
                    ],
                  ),
                  SizedBox(height: 24),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 155,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFAFAFA),
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/btnSigninwithGoogle1.png'),
                          SizedBox(width: 10),
                          Text(
                            'Google',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            selectionColor: Color(0XFF222222),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  SizedBox(
                    width: 155,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFAFAFA),
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/btnSigninwithFb1.png'),
                          SizedBox(width: 10),
                          Text(
                            'Facebook',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            selectionColor: Color(0XFF222222),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 24),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                        selectionColor: Color(0XFF888888),
                      ),
                      SizedBox(width: 8),

                      TextButton(
                        child: Text(
                          'Join Us',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,

                            color: Color(0XFFEA9459),
                          ),
                        ),

                        onPressed: () {},
                      ),
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
      ),
    );
  }
}
