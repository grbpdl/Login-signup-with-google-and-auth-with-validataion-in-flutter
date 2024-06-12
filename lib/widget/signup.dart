import 'package:flutter/material.dart';
import 'button_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  String? textValidator(value) {
    if (value.isEmpty) {
      return "Required";
    } else if (!value.contains(' ')) {
      return "Please enter both first name and last name";
    } else {
      return null;
    }
  }

  String? emailValidator(value) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value.isEmpty) {
      return "Required";
    } else if (!emailRegExp.hasMatch(value)) {
      return "Enter the proper email";
    } else {
      return null;
    }
  }

  String? passwordValidator(value) {
    final passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}$');

    if (value.isEmpty) {
      return "Required";
    } else if (!passwordRegExp.hasMatch(value)) {
      return "Enter Uppercase,special character and number with 8 char long";
    } else {
      return null;
    }
  }

  String? confirmpasswordValidator(value) {
    if (value.isEmpty) {
      return "Required";
    } else if (value != passwordController.text) {
      return "Password doesnot match";
    } else {
      return null;
    }
  }

  String? phoneValidator(value) {
    final phoneRegExp = RegExp(r'^[0-9]{10}$');

    if (value.isEmpty) {
      return "Required";
    } else if (!phoneRegExp.hasMatch(value)) {
      return "Enter the proper phone number";
    } else {
      return null;
    }
  }

  void signupApi() async {}

  void googleSignupApi() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.add_a_photo),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontFamily: 'Poppins-Bold',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Create your account",
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: usernameController,
                        validator: textValidator,
                        decoration: InputDecoration(
                            hintText: "Full Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Colors.purple.withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.person)),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: emailController,
                        validator: emailValidator,
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Colors.purple.withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.email)),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: phonenoController,
                        validator: phoneValidator,
                        decoration: InputDecoration(
                            hintText: "Phone no",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Colors.purple.withOpacity(0.1),
                            filled: true,
                            prefixIcon: const Icon(Icons.contact_page)),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: passwordController,
                        validator: passwordValidator,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.password),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: confirmpasswordController,
                        validator: confirmpasswordValidator,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.password),
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          signupApi();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.purple,
                      ),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          color: Colors.white,
                        ),
                      ),
                    )),
                const Center(
                    child: Text(
                  "Or",
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    color: Colors.black,
                  ),
                )),
                Button(
                  btnName: 'Signup with Google',
                  callBack: googleSignupApi,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
