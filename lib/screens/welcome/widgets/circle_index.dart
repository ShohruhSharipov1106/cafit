import 'package:cafit/constants/colors.dart';
import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';

class CircleIndex extends StatelessWidget {
  const CircleIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kWidth(150).w,
        vertical: kHeight(30).h,
      ),
      child: SizedBox(
        child: Row(
          children: [
            _circles(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kWidth(17.0).w,
              ),
              child: _circles(),
            ),
            _circles(),
          ],
        ),
      ),
    );
  }

  CircleAvatar _circles() => CircleAvatar(
        radius: 6.0,
        backgroundColor: kInactiveColor,
      );
}
