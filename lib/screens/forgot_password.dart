import 'package:flutter/material.dart';
import 'package:ihaveadream/variables.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  TextEditingController forgotEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenBgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Title
          title('Şifre Yenileme'),

          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Şifresini unuttuğunuz hesabın mail adresini yazın. Eğer mail adresine ait bir hesap varsa şifre yenileme linki iletilir.',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),

          // Email input
          Input(
              controller: forgotEmailController,
              icon: Icons.mail,
              hintText: 'Email adresinizi yazın',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {},
              obscureText: false),

          // Submit
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
                  fixedSize:
                      MaterialStateProperty.all(Size.fromWidth(100.w)),
                ),
                onPressed: () {},
                child: const Text('Gönder',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
        ],
      ),
    );
  }
}
