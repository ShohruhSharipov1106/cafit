import 'package:cafit/constants/imports.dart';

ThemeData systemTheme = ThemeData(
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
    headlineSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: kGreyBackground,
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: kWhiteText,
    ),
    displaySmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: kMainColor,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: kWhiteText,
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
);
