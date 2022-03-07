import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';
import 'package:gap/gap.dart';

class RadiosList extends StatefulWidget {
  const RadiosList({Key? key}) : super(key: key);

  @override
  State<RadiosList> createState() => _RadiosListState();
}

class _RadiosListState extends State<RadiosList> {
  int? fitnessLevel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: 1,
          groupValue: fitnessLevel,
          onChanged: (value) {
            fitnessLevel = 1;
            setState(() {});
          },
          title: Text(
            "Beginner",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 20.0),
          ),
          subtitle: Text(
            "You are new to fitness training",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: fitnessLevel == 1 ? kMainColor : kGreyBackground,
            ),
          ),
          activeColor: kMainColor,
          controlAffinity: ListTileControlAffinity.trailing,
        ),
        _divider(),
        RadioListTile(
          value: 2,
          groupValue: fitnessLevel,
          onChanged: (value) {
            fitnessLevel = 2;
            setState(() {});
          },
          title: Text(
            "Intermediate",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 20.0),
          ),
          subtitle: Text(
            "You have been training regularly",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color:fitnessLevel == 2 ? kMainColor : kGreyBackground,
            ),
          ),
          activeColor: kMainColor,
          controlAffinity: ListTileControlAffinity.trailing,
        ),
        _divider(),
        RadioListTile(
          value: 3,
          groupValue: fitnessLevel,
          onChanged: (value) {
            fitnessLevel = 3;
            setState(() {});
          },
          title: Text(
            "Advanced",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 20.0),
          ),
          subtitle: Text(
            "You're fit and ready for an intensive\nworkout plan",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: fitnessLevel == 3 ? kMainColor : kGreyBackground,
            ),
          ),
          activeColor: kMainColor,
          controlAffinity: ListTileControlAffinity.trailing,
        ),
        Gap(kHeight(100.0).h),
      ],
    );
  }

  Padding _divider() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kWidth(27.5).w,
        vertical: kHeight(25.0).h,
      ),
      child: Divider(
        height: kHeight(1.0).h,
        color: kDividerColor,
      ),
    );
  }
}
