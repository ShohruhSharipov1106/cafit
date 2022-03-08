import 'package:cafit/constants/imports.dart';

class GenderButton extends StatelessWidget {
  String whichgen;
  bool isLeft;
  GenderButton(this.whichgen, this.isLeft);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => context.read<Step3Provider>().yourGender(),
      child: Text(
        whichgen,
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: context.watch<Step3Provider>().gender == whichgen
                  ? kWhiteText
                  : kMainColor,
            ),
      ),
      style: OutlinedButton.styleFrom(
        fixedSize: Size(
          kWidth(90.0).w,
          kHeight(30.0).h,
        ),
        backgroundColor: context.watch<Step3Provider>().gender != whichgen
            ? kWhiteText
            : kMainColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.0,
            color: context.watch<Step3Provider>().gender == whichgen
                ? kMainColor
                : kInactiveColor,
          ),
          borderRadius: BorderRadius.only(
            topRight: isLeft
                ? const Radius.circular(0.0)
                : const Radius.circular(10.0),
            topLeft: isLeft
                ? const Radius.circular(10.0)
                : const Radius.circular(0.0),
            bottomLeft: isLeft
                ? const Radius.circular(10.0)
                : const Radius.circular(0.0),
            bottomRight: isLeft
                ? const Radius.circular(0.0)
                : const Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
