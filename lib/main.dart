// ignore_for_file: use_key_in_widget_constructors

import 'package:cafit/constants/imports.dart';
import 'package:cafit/constants/theme.dart';
import 'package:cafit/screens/onboarding/onboarding_page.dart';

main() async {
  await GetStorage.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WelcomeProvider()),
        ChangeNotifierProvider(create: (_) => Step3Provider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Cafit Workout App',
          debugShowCheckedModeBanner: false,
          theme: systemTheme,
          home: box.read("hasPersonel") == true
              ? const HomePage()
              : const OnBoardingPage(),
        );
      },
    );
  }
}
