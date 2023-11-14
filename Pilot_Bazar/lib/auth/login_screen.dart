import 'package:flutter/material.dart';
import 'package:pilot_bazar/auth/registration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  bool isChecked = false;
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
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontFamily: 'Axiforma'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("By signing in your agreeing our",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Axiforma')),
                  const SizedBox(height: 5),
                  const Text(
                    "Term and privacy policy",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontFamily: 'Axiforma'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 60, right: 60, top: 40, bottom: 0),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 16, fontFamily: 'Axiforma'),
                            )),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Registration()));
                              },
                              child: const Text(
                                "Registration",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Axiforma'),
                              ),
                            ))
                      ],
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
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Text("df"),
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.white,
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text(
                        "Remember password",
                        style: TextStyle(
                            color: Color(0xFF6B5E5E),
                            fontSize: 17,
                            fontFamily: 'Axiforma'),
                      ),
                      const Spacer(),
                      const Text(
                        "Forget password",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontFamily: 'Axiforma'),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Login',
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
                        fontSize: 18,
                        fontFamily: 'Axiforma'),
                  ),
                  const Text(
                    "Term and privacy policy",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
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
