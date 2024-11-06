import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_test_1/core/theme/colorpalet.dart';

class ToggleBtn extends ConsumerStatefulWidget {
  const ToggleBtn({super.key});

  @override
  ToggleBtnState createState() => ToggleBtnState();
}

class ToggleBtnState extends ConsumerState<ToggleBtn> {
  late final StateProvider<bool> toggleProvider;

  @override
  void initState() {
    super.initState();
    // Initialize a unique provider for this instance
    toggleProvider = StateProvider<bool>((ref) => false);
  }

  @override
  Widget build(BuildContext context) {
    final isToggled = ref.watch(toggleProvider);

    return Switch(
      activeColor: AppColorPalettes.white500,
      activeTrackColor: AppColorPalettes.orenge300,
      value: isToggled,
      onChanged: (value) {
        ref.read(toggleProvider.notifier).state =
            value; // Update the local state
      },
    );
  }
}
