import 'package:cafit/constants/imports.dart';
import 'package:flutter/cupertino.dart';

class AllowAccess extends StatelessWidget {
  const AllowAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kWidth(15.0).w,
      ),
      child: ListTile(
        title: const Text(
          "Apple Health",
          style: TextStyle(
            fontSize: 20.0,
            color: kGreyBackground,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: const Text(
          "Allow access ti fill my parameters",
          style: TextStyle(
            fontSize: 16.0,
            color: kGreyBackground,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: CupertinoSwitch(
          activeColor: kMainColor,
          value: context.watch<Step3Provider>().isAccess,
          onChanged: (v) => context.read<Step3Provider>().giveAccess(),
        ),
      ),
    );
  }
}
