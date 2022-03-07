import 'package:cafit/constants/imports.dart';
import 'package:cafit/screens/welcome/widgets/welcome_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Step1Page extends StatelessWidget {
  const Step1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: welcomeAppBar(),
      body: Column(
        children: [
          SvgPicture.asset(
            "assets/icons/men-women.svg",
          ),
          Text(
            "Welcome to\nCapi Fitness Appliccation",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 24.0,
                ),
            textAlign: TextAlign.center,
          ),
          Text(
            "Personalized workouts will help you\ngain strength, get in better shape and\nembrace a healthy lifestyle",
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
