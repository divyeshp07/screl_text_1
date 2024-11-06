import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_test_1/core/theme/light_theme_extension.dart';
import 'package:screl_test_1/data/local/objectBox_impl.dart';
import 'package:screl_test_1/view/pages/form_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ObjectboxImpl.create();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lighttheme,
      home: const FormPage(),
    );
  }
}
