import 'package:cafit/constants/colors.dart';
import 'package:cafit/constants/images.dart';
import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/sizer.dart';
import 'package:cafit/screens/menu/lists_of_menu_page.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: kHeight(243).h,
                width: kWidth(375).w,
                color: kGreyBackground,
              ),
              Positioned(
                child: SizedBox(
                  height: kHeight(49).h,
                  width: kWidth(253).w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 20.0,
                        backgroundColor: kLightGrey,
                      ),
                      SizedBox(
                        width: kWidth(12.5).w,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Capi Creative Design\n",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            TextSpan(
                              text: "Profile",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                left: kWidth(25.0).w,
                bottom: kHeight(32.0).h,
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    kBack,
                    height: kHeight(14).h,
                    width: kWidth(24).w,
                    fit: BoxFit.cover,
                  ),
                ),
                left: kWidth(31).w,
                top: kHeight(33).h,
              ),
            ],
          ),
          Container(
            height: kHeight(537).h,
            width: kWidth(375).w,
            color: kWhiteText,
            padding: EdgeInsets.only(
              top: kHeight(13).h,
              left: kWidth(6).w,
              right: kWidth(6).w,
            ),
            child: Wrap(
              children: List.generate(
                listOfNames.length,
                (index) => NeumorphicButton(
                  margin: EdgeInsets.symmetric(
                    horizontal: kWidth(8).w,
                    vertical: kHeight(8).h,
                  ),
                  style: const NeumorphicStyle(
                    depth: 5,
                    color: kWhiteText,
                  ),
                  child: SizedBox(
                    height: kHeight(105).h,
                    width: kWidth(105).w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          listOfImages[index],
                          height: kHeight(36).h,
                          width: kWidth(36).w,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          listOfNames[index],
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
