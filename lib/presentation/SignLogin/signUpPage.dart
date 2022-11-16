import 'package:flutter/material.dart';

import '../../model/userModel/accountModel.dart';
import '../../services/personalInfo.dart';
import 'parts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

final _nameController = TextEditingController();
final _emailController = TextEditingController();
final _phoneController = TextEditingController();
final _passController = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03032b),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 140,
                  ),
                  Parts.welcoming(
                    'Create\n Account',
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Parts.reusableTextField(
                    _nameController,
                    'User Name',
                    Icons.person_outline,
                    false,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Parts.reusableTextField(
                    _emailController,
                    'E-mail',
                    Icons.email_outlined,
                    false,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Parts.reusableTextField(
                    _phoneController,
                    'Phone Number',
                    Icons.phone_enabled_outlined,
                    false,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Parts.reusableTextField(
                    _passController,
                    'Password',
                    Icons.lock_outline,
                    true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: _doSignUp,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 45,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  //showing error here
                  //debugLocked: is not true
                  //Parts.ask(context, 'Don\'t have an account? ', 'SIGN UP', Parts.pushScreen(context, SignUpPage(),),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(color: Colors.white60, fontSize: 20),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'SIGN IN',
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _doSignUp() {
    String name = _nameController.text.toString().trim();
    String email = _emailController.text.toString().trim();
    String phone = _phoneController.text.toString().trim();
    String pass = _passController.text.toString().trim();
    Account account =
        Account(username: name, password: pass, email: email, phone: phone);
    HiveDB().storeAccount(account);
    var account2 = HiveDB().loadAccount();
    print(account2.username);
    print(account2.email);
    print(account2.phone);
    print(account2.password);
  }
}
