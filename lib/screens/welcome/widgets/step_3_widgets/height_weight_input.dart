import 'package:cafit/constants/imports.dart';

class HeightWeightInput extends StatelessWidget {
  String title;
  String suffixString;
  TextEditingController kontroller;
  String hintString;

  HeightWeightInput(
      this.title, this.suffixString, this.kontroller, this.hintString,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeight(25.0).h,
      width: kWidth(317.0).w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 20.0),
          ),
          SizedBox(
            height: kHeight(25.0).h,
            width: kWidth(80.0).w,
            child: TextField(
              decoration: InputDecoration(
                border: const UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                isDense: true,
                suffixIcon: Text(
                  suffixString,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                hintText: hintString,
                hintStyle: Theme.of(context).textTheme.displaySmall,
              ),
              controller: kontroller,
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ],
      ),
    );
  }
}
