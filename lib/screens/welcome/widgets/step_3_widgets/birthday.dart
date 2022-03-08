import 'package:cafit/constants/imports.dart';

class Birthday extends StatelessWidget {
  const Birthday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeight(30.0).h,
      width: kWidth(320.0).w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Birthday",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 20.0),
          ),
          SizedBox(
            width: kWidth(104.0).w,
            child: GestureDetector(
              child: Text(
                context.watch<Step3Provider>().birth,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              onTap: () => context.read<Step3Provider>().takeBirthday(context),
            ),
          ),
        ],
      ),
    );
  }
}
