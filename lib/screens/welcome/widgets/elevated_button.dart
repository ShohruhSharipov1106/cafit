import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';
import 'package:cafit/screens/welcome/step_2_page.dart';
import 'package:cafit/screens/welcome/step_3_page.dart';

class ElevatedButtonWidget extends StatelessWidget {
  String buttontext;

  ElevatedButtonWidget(this.buttontext);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(buttontext),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(kWidth(320.0).w, kHeight(50.0).h),
        ),
        onPressed: () {
          context.read<WelcomeProvider>().incrementStep();
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (_) => context.watch<WelcomeProvider>().step == 1
                    ? const Step2Page()
                    : (context.watch<WelcomeProvider>().step == 2
                        ? const Step3Page()
                        : const HomePage()),
              ),
              (route) => false);
        });
  }
}
