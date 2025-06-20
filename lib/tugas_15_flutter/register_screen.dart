import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:ppkd_b_2/meet_16_shella/database/db_helper.dart';
import 'package:ppkd_b_2/meet_16_shella/model/user_model.dart';
import 'package:ppkd_b_2/tugas_15_flutter/api/user_api.dart';

class RegisterScreenAPI extends StatefulWidget {
  const RegisterScreenAPI({super.key});
  static const String id = '/register_screen_api';
  @override
  State<RegisterScreenAPI> createState() => _RegisterScreenAPIState();
}

class _RegisterScreenAPIState extends State<RegisterScreenAPI> {
  final UserService userService = UserService();
  bool isVisibility = false;
  bool isLoading = false;
  bool isPasswordVisible = false;
  get onPressed => null;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // get onPressed => null;
  void register() async {
    setState(() {
      isLoading = true;
    });
    final res = await userService.registerUser(
      email: emailController.text,
      name: nameController.text,
      password: passwordController.text,
    );
    if (res["data"] != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Registration successful!"),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.pop(context);
    } else if (res["errors"] != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sorry, ${res["message"]}"),
          backgroundColor: Colors.red,
        ),
      );
    }
    setState(() {
      isLoading = false;
    });

    // } else {
    // }
  }

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
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
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
                    'Register',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Register your account',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Email Address',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: emailController,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your email',
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
                    'Name',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your name',
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
                  // SizedBox(height: 24),
                  // Text(
                  //   'Username',
                  //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  // ),
                  // SizedBox(height: 16),
                  // TextFormField(
                  //   controller: usernameController,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Please enter some text';
                  //     }
                  //     return null;
                  //   },
                  //   decoration: InputDecoration(
                  //     filled: true,
                  //     fillColor: Colors.white,
                  //     hintText: 'Enter your username',
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(32),
                  //       borderSide: BorderSide(
                  //         width: 1,
                  //         color: Color(0xff0F0D23),
                  //       ),
                  //     ),

                  //     focusedBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(32),
                  //       borderSide: BorderSide(
                  //         width: 1,
                  //         color: Color(0xff888888),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 24),
                  // Text(
                  //   'Phone Number',
                  //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  // ),
                  // SizedBox(height: 16),
                  // TextFormField(
                  //   controller: phoneController,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Please enter some text';
                  //     }
                  //     return null;
                  //   },
                  //   decoration: InputDecoration(
                  //     filled: true,
                  //     fillColor: Colors.white,
                  //     hintText: 'Enter your phone number',
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(32),
                  //       borderSide: BorderSide(
                  //         width: 1,
                  //         color: Color(0xff0F0D23),
                  //       ),
                  //     ),

                  //     focusedBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(32),
                  //       borderSide: BorderSide(
                  //         width: 1,
                  //         color: Color(0xff888888),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 24),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
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
                      hintText: ' Enter your password',
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
                            if (_formKey.currentState!.validate()) {
                              print('Email: ${emailController.text}');
                              print('Name: ${nameController.text}');
                              // print('Username: ${usernameController.text}');
                              // print('Phone: ${phoneController.text}');
                              print('Password: ${passwordController.text}');
                              // DbHelper.
                              register();
                              // data: UserModel(
                              //   name: nameController.text,
                              //   // username: usernameController.text,
                              //   email: emailController.text,
                              //   // phone: phoneController.text,
                              //   password: passwordController.text,
                              // ),
                            }
                            // setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 41,
                              vertical: 20,
                            ),
                            child: Text(
                              'Register',
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
                        'Have an account?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                        selectionColor: Color(0XFF888888),
                      ),
                      SizedBox(width: 8),
                      TextButton(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFEA9459),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          // setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  // Column(
                  //   // mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Expanded(child: Divider(thickness: 1)),
                  //         Text(
                  //           'Or Sign In With',
                  //           style: TextStyle(
                  //             fontSize: 12,
                  //             fontWeight: FontWeight.normal,
                  //           ),
                  //           selectionColor: Color(0XFF888888),
                  //         ),
                  //         Expanded(child: Divider(thickness: 1)),
                  //       ],
                  //     ),
                  //     SizedBox(height: 24),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SizedBox(
                  //       width: 155,
                  //       height: 48,
                  //       child: ElevatedButton(
                  //         style: ElevatedButton.styleFrom(
                  //           backgroundColor: Color(0xffFAFAFA),
                  //         ),
                  //         onPressed: () {
                  //           setState(() {});
                  //         },
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Image.asset(
                  //               'assets/images/Google.png',
                  //               width: 20,
                  //               height: 20,
                  //             ),
                  //             SizedBox(width: 10),
                  //             Text(
                  //               'Google',
                  //               style: TextStyle(
                  //                 fontSize: 14,
                  //                 fontWeight: FontWeight.normal,
                  //               ),
                  //               selectionColor: Color(0XFF222222),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(width: 16),
                  //     SizedBox(
                  //       width: 155,
                  //       height: 48,
                  //       child: ElevatedButton(
                  //         style: ElevatedButton.styleFrom(
                  //           backgroundColor: Color(0xffFAFAFA),
                  //         ),
                  //         onPressed: () {
                  //           setState(() {});
                  //         },
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Image.asset(
                  //               'assets/images/Fb.png',
                  //               height: 20,
                  //               width: 20,
                  //             ),
                  //             SizedBox(width: 10),
                  //             Text(
                  //               'Facebook',
                  //               style: TextStyle(
                  //                 fontSize: 14,
                  //                 fontWeight: FontWeight.normal,
                  //               ),
                  //               selectionColor: Color(0XFF222222),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
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
        ),
      ),
    );
  }
}
