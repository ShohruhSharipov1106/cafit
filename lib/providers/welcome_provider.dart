import 'package:cafit/constants/imports.dart';

class WelcomeProvider extends ChangeNotifier {
  int step = 0;
  incrementStep() {
    step < 3 ? step += 1 : step = 3;
    notifyListeners();
  }
}
