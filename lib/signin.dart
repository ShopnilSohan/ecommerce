import 'package:ecommerce/dashboard.dart';
import 'package:ecommerce/forgetpass.dart';
import 'package:ecommerce/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class MySigin extends StatefulWidget {
  @override
  _MySiginState createState() => _MySiginState();
}

class _MySiginState extends State<MySigin> {
  bool hiddenpassword = true;
  bool _checkbox = false;

  TextEditingController userController = TextEditingController();

  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: Center(
                child: Text(
              'Sign In',
              style: TextStyle(fontSize: 25, color: Colors.black54),
            )),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          child: Center(
              child: Text(
            'Welcome Back',
            style: TextStyle(fontSize: 30, color: Colors.black),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            child: Center(
                child: Text(
              'Sign in with your email and password \n        or continue with social media',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            )),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: height * 0.07),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: Column(
                    children: [
                      TextField(
                        controller: userController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            labelText: 'Email or phone number',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Enter your email or phone number'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        maxLength: 8,
                        obscureText: hiddenpassword,
                        controller: passController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hiddenpassword = !hiddenpassword;
                                });
                              },
                              icon: Icon(
                                hiddenpassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Enter your password'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.black,
                                activeColor: Color(0XFFFFA500),
                                value: _checkbox,
                                onChanged: (value) {
                                  setState(() {
                                    _checkbox = !_checkbox;
                                  });
                                }),
                            Text(
                              'Remember me',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Forgotpass()));
                                },
                                child: Text('Forgot password',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 15)))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0XFFff781f),
                fixedSize: Size(320, 65),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyDashboard()));
            },
            child: Text(
              'Continue',
              style: TextStyle(fontSize: height / 29),
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          '-------Or-------',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
            width: width / 1.48,
            child: Row(
              children: [
                SignInButton.mini(
                  buttonType: ButtonType.google,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.facebook,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.appleDark,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 280,
          margin: EdgeInsets.only(top: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: '''Don't have an account? ''',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0XFFFFA500),
                    ),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyRegister()));
                      }),
              ],
            ),
          ),
        )
      ]),
    )));
  }
}
