import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';

class Divide extends StatelessWidget {
  const Divide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
