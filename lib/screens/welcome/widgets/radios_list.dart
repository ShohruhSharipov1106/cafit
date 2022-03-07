import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';

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
        _radio(
          context,
          1,
          "Beginner",
          "You are new to fitness training",
        ),
        _divider(),
        _radio(
          context,
          2,
          "Intermediate",
          "You have been training regularly",
        ),
        _divider(),
        _radio(
          context,
          3,
          "Advanced",
          "You're fit and ready for an intensive\nworkout plan",
        ),
        SizedBox(height: kHeight(144.0).h),
      ],
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
