import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_test_1/core/constents/formpage_txt_contents.dart';
import 'package:screl_test_1/core/theme/colorpalet.dart';
import 'package:screl_test_1/core/theme/extension/app_theme_extension.dart';

class RichTextWidget extends ConsumerWidget {
  const RichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(formPageConstentsProvider);

    return RichText(
      text: TextSpan(
        style: context.typography.body,
        children: [
          TextSpan(text: constants.txtyoucansetup),
          TextSpan(
            text: constants.txtheilightedFirstportion,
            style: const TextStyle(color: AppColorPalettes.orenge600),
          ),
          TextSpan(text: constants.txtor),
          TextSpan(
            text: constants.txtheilightedsecondportion,
            style: const TextStyle(color: AppColorPalettes.orenge600),
          ),
          TextSpan(text: constants.txtcnagethis),
        ],
      ),
    );
  }
}
