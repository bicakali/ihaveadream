import 'package:flutter/material.dart';
import 'package:ihaveadream/variables.dart';


// ignore: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController logInEmailController = TextEditingController();
  TextEditingController logInPasswordController = TextEditingController();

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
            title('Giriş Yap'),

            SizedBox(
              height: size.height / 15,
            ),

            //   Log in Form
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Email
                Input(
                    controller: logInEmailController,
                    icon: Icons.mail,
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      // if (value == null || value.isEmpty) {
                      //   return 'Null Error';
                      // }
                      // return null;
                    },
                    obscureText: false),

                // Password
                Input(
                    controller: logInPasswordController,
                    icon: Icons.password,
                    hintText: 'Paassword',
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      // if (value == null || value.isEmpty) {
                      //   return 'Null Error';
                      // }
                      // return null;
                    },
                    obscureText: true),
              ],
            ),

            // Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: TextButton(
                    child: const Text(
                      'Şifreyi Unuttum',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgotPassword');
                    },
                  ),
                ),
              ],
            ),

            // Login Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
                  fixedSize:
                      MaterialStateProperty.all(Size.fromWidth(size.width)),
                ),
                onPressed: () {},
                child: const Text('Giriş Yap',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),

            

            // Haven't account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hesabın Yokmu? ',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white54,
                  ),
                ),
                TextButton(
                    onPressed: () {Navigator.pushNamedAndRemoveUntil(context, '/register', (route) => false);},
                    child: const Text(
                      'Kayıt ol',
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
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey[700]),
                  fixedSize:
                      MaterialStateProperty.all(Size.fromWidth(size.width)),
                ),
                onPressed: () {},
                child: const Text('Google ile giriş yap',
                    style: TextStyle(fontSize: 15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
