import 'package:cafit/constants/imports.dart';
import 'package:cafit/screens/welcome/step_3_page.dart';
import 'package:cafit/screens/welcome/widgets/circle_index.dart';
import 'package:cafit/screens/welcome/widgets/elevated_button.dart';
import 'package:cafit/screens/welcome/widgets/welcome_app_bar.dart';

class Step2Page extends StatefulWidget {
  const Step2Page({Key? key}) : super(key: key);

  @override
  State<Step2Page> createState() => _Step2PageState();
}

class _Step2PageState extends State<Step2Page> {
  int? fitnessLevel;
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
          _radio(
            context,
            1,
            "Beginner",
            "You are new to fitness training",
          ),
          const Divide(),
          _radio(
            context,
            2,
            "Intermediate",
            "You have been training regularly",
          ),
          const Divide(),
          _radio(
            context,
            3,
            "Advanced",
            "You're fit and ready for an intensive\nworkout plan",
          ),
          SizedBox(height: kHeight(144.0).h),
          ElevatedButtonWidget(
            "Next",
            () {
              if (fitnessLevel == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Please select a choice from this",
                    ),
                  ),
                );
              } else {
                context.read<WelcomeProvider>().incrementStep();
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Step3Page(),
                  ),
                  (route) => false,
                );
              }
              ;
            },
          ),
          const CircleIndex()
        ],
      ),
    );
  }

  RadioListTile<int> _radio(
    BuildContext context,
    int val,
    String title,
    String subtitle,
  ) {
    return RadioListTile(
      value: val,
      groupValue: fitnessLevel,
      onChanged: (value) {
        fitnessLevel = val;
        setState(() {});
      },
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20.0),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
          color: fitnessLevel == val ? kMainColor : kGreyBackground,
        ),
      ),
      activeColor: kMainColor,
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
