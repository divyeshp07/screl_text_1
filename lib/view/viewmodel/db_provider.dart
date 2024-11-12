import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_test_1/data/local/shared_preff_db.dart';

final formdbProvider = Provider<LocalStorage>((ref) {
  return LocalStorage();
});
