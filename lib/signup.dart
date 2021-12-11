import 'package:ecommerce/signin.dart';
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool hiddenpassword = true;
  @override
  int _radiovalue = 0;
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Center(
                child: Text(
                  'Register Account',
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Center(
                  child: Text(
                    'Complete your details or continue\n              with social media',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 35, right: 35),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      child: TextField(
                                        controller: firstnameController,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                          labelText: "First Name",
                                          hintText: "First Name",
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: TextField(
                                        controller: lastnameController,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            ),
                                          ),
                                          labelText: "Lastname",
                                          hintText: "Lastname",
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  controller: emailController,
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
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      hintText:
                                          'Enter your email or phone number'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Gender',
                                          style: TextStyle(fontSize: 25),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Radio(
                                                  activeColor:
                                                      Colors.deepOrange,
                                                  value: 1,
                                                  groupValue: _radiovalue,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _radiovalue =
                                                          value as int;
                                                    });
                                                  }),
                                              Text(
                                                'Male',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Radio(
                                                  activeColor:
                                                      Colors.deepOrange,
                                                  value: 2,
                                                  groupValue: _radiovalue,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _radiovalue =
                                                          value as int;
                                                    });
                                                  }),
                                              Text(
                                                'Female',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
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
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      hintText: 'Enter your password'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0XFFff781f),
                                        fixedSize: Size(320, 65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30))),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MySigin()));
                                    },
                                    child: Text(
                                      'Continue',
                                      style: TextStyle(fontSize: height / 29),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
