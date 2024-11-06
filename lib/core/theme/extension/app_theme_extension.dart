import 'package:flutter/material.dart';
import 'package:screl_test_1/core/theme/extension/app_color_extension.dart';
import 'package:screl_test_1/core/theme/extension/space_extension.dart';
import 'package:screl_test_1/core/theme/extension/typography_extension.dart';

/// This extension allows to use the custom theme extensions from the
/// BuildContext object easily.
extension AppThemeExtension on BuildContext {
  AppColorExtension get colors {
    return Theme.of(this).extension<AppColorExtension>()!;
  }

  AppSpaceExtension get spaces {
    return Theme.of(this).extension<AppSpaceExtension>()!;
  }

  AppTypographyExtension get typography {
    return Theme.of(this).extension<AppTypographyExtension>()!;
  }
}
