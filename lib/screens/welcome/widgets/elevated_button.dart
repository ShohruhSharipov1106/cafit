import 'package:cafit/constants/imports.dart';


class ElevatedButtonWidget extends StatelessWidget {
  String buttontext;
  Function elevatedFunc;
  ElevatedButtonWidget(this.buttontext, this.elevatedFunc);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(buttontext),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(kWidth(320.0).w, kHeight(50.0).h),
      ),
      onPressed: () => elevatedFunc(),
    );
  }
}
