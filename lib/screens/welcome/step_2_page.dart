import 'dart:ui';

import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';
import 'package:cafit/screens/welcome/widgets/circle_index.dart';
import 'package:cafit/screens/welcome/widgets/elevated_button.dart';
import 'package:cafit/screens/welcome/widgets/radios_list.dart';
import 'package:cafit/screens/welcome/widgets/welcome_app_bar.dart';

class Step2Page extends StatefulWidget {
  const Step2Page({Key? key}) : super(key: key);

  @override
  State<Step2Page> createState() => _Step2PageState();
}

class _Step2PageState extends State<Step2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: welcomeAppBar(context),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kWidth(50.0).w,
              vertical: kHeight(28.0).h,
            ),
            child: Text(
              "Select your fitness level",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 24.0),
            ),
          ),
          SizedBox(height: kHeight(25.0).h),
          const RadiosList(),
          ElevatedButtonWidget("Next"),
          const CircleIndex()
        ],
      ),
    );
  }
}
