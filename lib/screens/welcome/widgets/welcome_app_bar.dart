import 'package:cafit/constants/imports.dart';

AppBar welcomeAppBar(
  BuildContext context,
) =>
    AppBar(
      leading: context.watch<WelcomeProvider>().step != 1
          ? const BackButton(
              color: kGreyBackground,
            )
          : const SizedBox(),
      title: Text(
        "Step ${context.watch<WelcomeProvider>().step + 1} of 3",
      ),
    );
