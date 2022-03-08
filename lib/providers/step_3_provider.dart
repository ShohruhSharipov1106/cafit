import 'package:cafit/constants/imports.dart';
import 'package:intl/intl.dart';

class Step3Provider extends ChangeNotifier {
  bool isAccess = false;
  String birth = "Aug 25, 1990";
  TextEditingController heighController = TextEditingController();
  TextEditingController weighController = TextEditingController();
  num heigh = 175;
  num weigh = 75;
  String gender = "Male";

  giveAccess() {
    isAccess = !isAccess;
    notifyListeners();
  }

  yourGender() {
    gender == "Male" ? gender = "Female" : gender = "Male";
  
    notifyListeners();
  }

  takeBirthday(context) {
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime(1950),
      initialDateTime: DateTime.now(),
      maxDateTime: DateTime.now(),
      pickerTheme: DateTimePickerTheme(
        pickerHeight: kHeight(250.0).h,
        backgroundColor: kWhiteText,
        itemTextStyle: const TextStyle(
          fontSize: 18.0,
          color: kMainColor,
        ),
      ),
      dateFormat: 'dd-MMM-yyyy',
      onMonthChangeStartWithFirstDate: true,
      onConfirm: (v, i) {
        String formats = DateFormat.yMMMd('en_US').format(
          DateTime(v.year, v.month, v.day),
        );
        birth = formats;
        notifyListeners();
      },
    );
    notifyListeners();
  }
}
