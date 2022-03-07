import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("Next"),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(kWidth(320.0).w, kHeight(50.0).h),
      ),
      onPressed: () {},
    );
  }
}
