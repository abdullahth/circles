import 'package:application/controllers/users.dart';
import 'package:application/translations/translations.dart';
import 'package:application/views/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'package:application/controllers/groups.dart';

void main() async {
  GetStorage.init();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GroupsController()),
        ChangeNotifierProvider(create: (_) => UsersController()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppTranslations(),
        locale: AppTranslations.supportedLocales.first,
        supportedLocales: AppTranslations.supportedLocales,
        fallbackLocale: AppTranslations.fallbackLocale,
        localizationsDelegates: AppTranslations.localizationsDelegates,
        home: const HomePage(),
      ),
    );
  }
}
