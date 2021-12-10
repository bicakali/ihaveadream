import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ihaveadream/main.dart';
import 'package:intro_slider/dot_animation_enum.dart';

import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Slide> slides = [
      Slide(
        backgroundColor: Colors.black45,
        centerWidget: const Image(
          image: AssetImage('/assets/cap.png'),
          color: Colors.grey,
        ),
        title: 'Hoşgeldin!',
        description:
            'Burada olduğuna göre seninde hayallarin var. Ve biliyorsunki bunun için çok çalışman gerek.',
        marginDescription: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),
      Slide(
        backgroundColor: Colors.black45,
        centerWidget: Image.asset('/assets/dusunen_adam.png'),
        title: 'Soru - Cevap',
        description:
            'Burada bilmediğin konu hakkında soru sorabilir, Yardım alabilirsin.',
        marginDescription: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),
      Slide(
        backgroundColor: Colors.black45,
        centerWidget: Image.asset(
          '/assets/share.png',
          width: size.width / 2,
        ),
        title: 'Paylaşımlar',
        description: 'Sevdiğin resimleri, anları paylaşabilirsin',
        marginDescription: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),
      Slide(
        backgroundColor: Colors.black45,
        title: '',
        description:
            'Haydi! Ne duruyorsun. Hemen kayıt ol ve bu uygulamanın nimetlerinden faydalanmaya başla.',
        marginDescription: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      ),
    ];

    return Scaffold(
      body: IntroSlider(
        isScrollable: true,
        slides: slides,
        colorActiveDot: Colors.white,
        colorDot: Colors.white38,
        showSkipBtn: false,
        // showPrevBtn: false,
        // showNextBtn: false,
        doneButtonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white30),
        ),
        onDonePress: () {},
        typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      ),
    );
  }
}
