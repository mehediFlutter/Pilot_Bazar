import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF333333),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontFamily: 'Axiforma'),
                  ),
                  
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 60, right: 60, top: 20, bottom: 20),
                    child: Row(
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(color: Colors.white,
                              fontSize: 16, fontFamily: 'Axiforma'),
                        ),
                        Spacer(),
                        Text(
                          "Registration",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Axiforma'),
                        )
                      ],
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.phone_android_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "   Phone number",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Axiforma'),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "    Enter User Name",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Axiforma'),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "      Email Address",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Axiforma'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    scrollPadding: EdgeInsets.zero,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.lock_outline_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "      Password",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Axiforma'),
                    ),
                  ),
                  const TextField(
                    scrollPadding: EdgeInsets.zero,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.lock_outline_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "     confirm password",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Axiforma'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                
                  const SizedBox(height: 20),
                  SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Register',
                            style: TextStyle(fontFamily: 'Axiforma'),
                          ))),
                  const SizedBox(height: 20),
                  const Text(
                    "or connect with",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Axiforma'),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/facebook1.png'),
                        Image.asset('assets/images/instagram1.png'),
                        Image.asset('assets/images/pinterest1.png'),
                        Image.asset('assets/images/linkedin1.png'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "By signing in your agreeing our",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Axiforma'),
                  ),
                  const Text(
                    "Term and privacy policy",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontFamily: 'Axiforma'),
                  ),
                  Image.asset('assets/images/logoCircle.png')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
