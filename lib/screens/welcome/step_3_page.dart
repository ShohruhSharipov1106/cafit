import 'package:cafit/constants/imports.dart';
import 'package:cafit/screens/welcome/step_2_page.dart';

import 'package:cafit/screens/welcome/widgets/circle_index.dart';
import 'package:cafit/screens/welcome/widgets/elevated_button.dart';
import 'package:cafit/screens/welcome/widgets/step_3_widgets/allow_access.dart';
import 'package:cafit/screens/welcome/widgets/step_3_widgets/birthday.dart';
import 'package:cafit/screens/welcome/widgets/gender_button.dart';
import 'package:cafit/screens/welcome/widgets/step_3_widgets/gender_field.dart';
import 'package:cafit/screens/welcome/widgets/step_3_widgets/height_weight_input.dart';
import 'package:cafit/screens/welcome/widgets/welcome_app_bar.dart';
import 'package:flutter/cupertino.dart';

class Step3Page extends StatelessWidget {
  const Step3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: welcomeAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Personnal Details",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 24.0),
          ),
          SizedBox(height: kHeight(19.0).h),
          Text(
            "Let us know about you to speed up the\nresult, Get fit with your personal workout\nplan!",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: kHeight(19.0).h),
          const AllowAccess(),
          const Divide(),
          const Birthday(),
          const Divide(),
          HeightWeightInput(
            "Height",
            ' cm',
            context.watch<Step3Provider>().heighController,
            context.watch<Step3Provider>().heigh.toString(),
          ),
          const Divide(),
          HeightWeightInput(
            "Weight",
            " kg",
            context.watch<Step3Provider>().weighController,
            context.watch<Step3Provider>().weigh.toString(),
          ),
          const Divide(),
          const GenderField(),
          SizedBox(height: kHeight(75.0).h),
          ElevatedButtonWidget(
            "Start",
            () {
              context.read<WelcomeProvider>().incrementStep();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => const HomePage(),
                ),
                (route) => false,
              );
              GetStorage().write("hasPersonel", true);
            },
          ),
          const CircleIndex(),
        ],
      ),
    );
  }
}
