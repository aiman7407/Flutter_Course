import 'package:flutter/material.dart';
import 'package:review_session/enums/gender_enum.dart';
import 'package:review_session/screens/bmi_result_screen.dart';
import 'package:review_session/src/app_colors.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double heightValue = 160;
  int weightValue = 60;
  int age = 18;
  GenderEnum selectedGender = GenderEnum.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBmiPrimaryColor,
      body: Column(children: [
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = GenderEnum.male;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: selectedGender == GenderEnum.male
                      ? EdgeInsets.all(20)
                      : EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: selectedGender == GenderEnum.male
                          ? AppColors.kBmiSelectedColor
                          : AppColors.kBmiUnSelectedColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset('assets/images/male.png'),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = GenderEnum.female;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: selectedGender == GenderEnum.female
                      ? EdgeInsets.all(20)
                      : EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: selectedGender == GenderEnum.female
                          ? AppColors.kBmiSelectedColor
                          : AppColors.kBmiUnSelectedColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset('assets/images/female.png'),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(50),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.kBmiSelectedColor),
          child: Column(
            children: [
              const Text(
                'Height',
                style: TextStyle(
                  color: Color(0xffbbbcc6),
                ),
              ),
              Text(
                '${heightValue.toInt()}',
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Color(0xFF8D8E98),
                  activeTrackColor: Color(0xFFE83D66),
                  thumbColor: Color(0xFFE83D66),
                  overlayColor: Color(0x29E83D66),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                ),
                child: Slider(
                  value: heightValue.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  onChanged: (double newHeight) {
                    setState(() {
                      heightValue = newHeight;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.kBmiSelectedColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Weight',
                      style: TextStyle(
                        color: Color(0xffbbbcc6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$weightValue',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              weightValue--;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(Icons.remove),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              weightValue++;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.kBmiSelectedColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Age',
                      style: TextStyle(
                        color: Color(0xffbbbcc6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$age',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              age--;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(Icons.remove),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              age++;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 70,
        ),
        GestureDetector(
          onTap: () {
            weightValue;
            heightValue;

            double result = weightValue / ((heightValue / 100) * 2);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BmiResultScreen(result: result)));
          },
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Color(0xFFE83D66),
            width: double.infinity,
            child: Text(
              'Calculate'.toUpperCase(),
              style: const TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),
        )
      ]),
    );
  }
}
