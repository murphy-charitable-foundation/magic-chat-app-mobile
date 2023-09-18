import 'package:flutter/material.dart';
import 'package:penpal/src/Home/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/love.png"),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 40, left: 40, bottom: 10),
                child: Text("Welcome Back",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40, bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    icon: Icon(Icons.person, color: Colors.red),
                    hintText: 'Insert email',
                    labelText: 'Email *',
                    labelStyle: TextStyle(color: Colors.black)),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.key_rounded,
                      color: Colors.red,
                    ),
                    hintText: 'Insert password',
                    labelText: 'Password *',
                    labelStyle: TextStyle(color: Colors.black)),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 25),
              child: Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.red,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Remember Me",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.end,
                      )),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.end,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 238, 6, 6),
                          Color.fromARGB(255, 214, 100, 146)
                        ]),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          shadowColor: Colors.transparent,
                        ),
                        child: const Text("Log In"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Dont have account?"),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sing Up",
                      style: TextStyle(color: Colors.red),
                      textAlign: TextAlign.end,
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
