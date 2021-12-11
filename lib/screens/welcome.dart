import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ihaveadream/variables.dart';
import 'package:intro_slider/dot_animation_enum.dart';

import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Sliders
    List<Slide> slides = [

      // 1. Slide
      Slide(
        backgroundColor: screenBgColor,
        centerWidget: const Image(
          image: AssetImage('./assets/cap.png'),
          color: Colors.grey,
        ),
        title: 'Hoşgeldin!',
        description:
            'Burada olduğuna göre seninde hayallarin var. Ve biliyorsunki bunun için çok çalışman gerek.',
        marginDescription: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),

      // 2. Slide
      Slide(
        backgroundColor: Colors.black45,
        centerWidget: Image.asset('./assets/dusunen_adam.png'),
        title: 'Soru - Cevap',
        description:
            'Burada bilmediğin konu hakkında soru sorabilir, Yardım alabilirsin.',
        marginDescription: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),

      // 3. Slide
      Slide(
        backgroundColor: Colors.black45,
        centerWidget: Image.asset(
          './assets/share.png',
          width: size.width / 2,
        ),
        title: 'Paylaşımlar',
        description: 'Sevdiğin resimleri, anları paylaşabilirsin',
        marginDescription: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),

      // 4.Slide
      Slide(
        backgroundColor: Colors.black45,
        title: '',
        description:
            'Haydi! Ne duruyorsun. Hemen kayıt ol ve bu uygulamanın nimetlerinden faydalanmaya başla.',
        marginDescription: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),
    ];

    return Scaffold(
      body: IntroSlider(
        isScrollable: true,
        slides: slides,
        colorActiveDot: Colors.white,
        colorDot: Colors.white38,
        showSkipBtn: false,
        showPrevBtn: false,
        showNextBtn: false,
        doneButtonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white70),
        ),
        onDonePress: () {
          Navigator.pushNamedAndRemoveUntil(context, '/logIn', (route) => false);
        },
        typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      ),
    );
  }
}
