import 'package:flutter/material.dart';
import '/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  bool changebutton = false;
  String name = '';

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.home_route);

      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_img.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username cannot be empty';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter you password",
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value == null) {
                          return 'Password cannot be empty';
                        } else if (value.length < 8) {
                          return 'Password cannot be less than 8 chars';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.cyan,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 100),
                      child: InkWell(
                        child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changebutton ? 50 : 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: changebutton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )),
                        onTap: () => moveToHome(context),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
