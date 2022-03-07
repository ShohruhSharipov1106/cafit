import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';
import 'package:cafit/screens/onboarding/components/image_lists.dart';
import 'package:cafit/screens/welcome/step_1_page.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              onBoardingList[index],
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: InkWell(
              child: SizedBox(
                width: kWidth(320.0).w,
                height: kHeight(50.0).h,
              ),
              onTap: () {
                index < 2 ? index += 1 : index = 2;
                setState(() {});
                if (index > 2) {
                  GetStorage().write('onboard', 'first in app');
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Step1Page(),
                    ),

                    (route) => false,
                  );
                }
              },
            ),
            bottom: kHeight(42.0).h,
            left: kWidth(28.0).w,
          ),
        ],
      ),
    );
  }
}
