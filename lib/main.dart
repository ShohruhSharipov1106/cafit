import 'package:cafit/constants/colors.dart';
import 'package:cafit/constants/imports.dart';
import 'package:cafit/screens/menu/menu_page.dart';
import 'package:cafit/screens/welcome/step_2_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Cafit Workout App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Quicksand",
            scaffoldBackgroundColor: kWhiteText,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: kElevatedTextColor,
                ),
                elevation: 0,
                alignment: Alignment.center,
                shape: const StadiumBorder(),
                primary: kMainColor,
              ),
            ),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: kMainColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
              ),
              elevation: 0,
              color: kWhiteText,
            ),
            textTheme: const TextTheme(
              displayMedium: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: kWhiteText,
              ),
              headlineSmall: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: kGreyBackground,
              ),
              titleMedium: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: kGreyBackground,
              ),
              titleSmall: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: kWhiteText,
              ),
            ),
          ),
          home: const Step2Page(),
        );
      },
    );
  }
}
