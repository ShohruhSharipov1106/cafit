import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';
import 'package:cafit/screens/welcome/widgets/circle_index.dart';
import 'package:cafit/screens/welcome/widgets/elevated_button.dart';
import 'package:cafit/screens/welcome/widgets/radios_list.dart';
import 'package:cafit/screens/welcome/widgets/welcome_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Step1Page extends StatelessWidget {
  const Step1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: welcomeAppBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: kHeight(66.0).h,
          ),
          SvgPicture.asset(
            "assets/icons/men-women.svg",
          ),
          SizedBox(
            height: kHeight(26.0).h,
          ),
          Text(
            "Welcome to\nCapi Fitness Appliccation",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 24.0,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: kHeight(21.0).h,
          ),
          Text(
            "Personalized workouts will help you\ngain strength, get in better shape and\nembrace a healthy lifestyle",
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: kHeight(106.0).h,
          ),
          ElevatedButtonWidget("Get Started"),
          CircleIndex()
        ],
      ),
    );
  }
}
