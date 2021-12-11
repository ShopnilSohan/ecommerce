
import 'package:flutter/material.dart';

class Forgotpass extends StatelessWidget {

  TextEditingController emailController = TextEditingController();

  @override
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
                          'Forgot Password',
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
                        'Forgot Password',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    child: Center(
                        child: Text(
                          'Please enter your email and we will send \n     you a link to return to your account',
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        controller: emailController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
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
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Enter your email'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: height / 12,
                  width: width / 1.1,
                  decoration: BoxDecoration(
                    color: Color(0XFFff781f),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Forgotpass()));
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: height / 29),
                    ),
                  ),
                ),
                SizedBox(height: 110,),
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
                            )),
                      ],
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
