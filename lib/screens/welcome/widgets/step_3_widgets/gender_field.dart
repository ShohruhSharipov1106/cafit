import 'package:cafit/constants/imports.dart';
import 'package:cafit/screens/welcome/widgets/gender_button.dart';

class GenderField extends StatelessWidget {
  const GenderField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeight(30.0).h,
      width: kWidth(321.0).w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Gender",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 20.0),
          ),
          SizedBox(
            height: kHeight(30.0).h,
            width: kWidth(180.0).w,
            child: Row(
              children: [
                GenderButton("Male", true),
                GenderButton("Female", false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
