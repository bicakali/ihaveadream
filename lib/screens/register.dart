import 'package:flutter/material.dart';

import '../variables.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController registerNameController = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: screenBgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            title('Kayıt Ol'),

            SizedBox(
              height: size.height / 15,
            ),

            //   Log in Form
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Name
                Input(
                    controller: registerNameController,
                    icon: Icons.person,
                    hintText: 'Name',
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                    obscureText: false),


                // Email
                Input(
                    controller: registerEmailController,
                    icon: Icons.mail,
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {},
                    obscureText: false),

                // Password
                Input(
                    controller: registerPasswordController,
                    icon: Icons.password,
                    hintText: 'Paassword',
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {},
                    obscureText: true),
              ],
            ),


            // Register Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
                  fixedSize:
                      MaterialStateProperty.all(Size.fromWidth(size.width)),
                ),
                onPressed: () {},
                child: const Text('Kayıt Ol',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),

            // Haven't account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Zaten bir hesabın var mı?',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white54,
                  ),
                ),
                TextButton(
                  onPressed: () {Navigator.pushNamedAndRemoveUntil(context, '/logIn', (route) => false);},
                  child: const Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: size.height / 20,
            ),

            // Sign in with Google
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[700]),
                  fixedSize:
                      MaterialStateProperty.all(Size.fromWidth(size.width)),
                ),
                onPressed: () {},
                child: const Text('Google ile kayıt ol',
                    style: TextStyle(fontSize: 15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
