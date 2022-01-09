import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ihaveadream/variables.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenBgColor,
      // AppBar
      appBar: AppBar(
        backgroundColor: screenBgColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
        ),
        title: const Text('Bir Hayalim Var'),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Statistics
              tSpan(context, 'İstatistiklerim'),

              Wrap(
                children: [
                  ScoreBox(Colors.blue, 'Dün', '1500'),
                  ScoreBox(const Color(0xFF8F50FB), 'Bugün', '1205'),
                  ScoreBox(const Color(0xFFFC8954), 'Toplam', '2705'),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              // Goals
              tSpan(context, 'Hedeflerim'),

              Wrap(
                children: [
                  GoalBox('Matematik', '120'),
                  GoalBox('Fizik', '90'),
                  GoalBox('Kimya', '70'),
                  GoalBox('Matematik', '120'),
                  GoalBox('Fizik', '90'),
                  GoalBox('Kimya', '70'),
                ],
              ),

              // Özlü Söz
              Container(
                color: const Color(0xFF2B2F3A),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Transform.rotate(
                          angle: 600,
                          child: const Icon(Icons.format_quote_sharp)),
                    ),
                    Container(
                      // padding: EdgeInsets.all(20),
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Günün Sözü',
                            style: context.theme.textTheme.headline5!
                                .copyWith(color: Colors.blue),
                          ),
                          Text(
                              'Senin almaya cesaret edemediğin riskleri alanlar, senin yaşamak istediğin hayatı yaşarlar.',
                              style: context.theme.textTheme.bodyText1!
                                  .copyWith(color: Colors.white))
                        ],
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      right: 0,
                      child: Icon(Icons.format_quote_sharp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
