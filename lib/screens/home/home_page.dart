import 'package:cafit/constants/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: kMainColor,
        elevation: 0,
        title: Text(
          "Cafit Fitness Application",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
