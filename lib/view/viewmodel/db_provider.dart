import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:screl_test_1/core/model/form_data_entity.dart';
import 'package:screl_test_1/data/local/objectBox_impl.dart';
part 'db_provider.g.dart';

@riverpod
class FormDb extends _$FormDb {
  @override
  List<FormDataEntity> build() {
    return ObjectboxImpl.formsBox.getAll();
  }

  void putData(FormDataEntity item) {
    ObjectboxImpl.formsBox.put(item);
    state = ObjectboxImpl.formsBox.getAll();
    print(state.length);
  }

  void getData(int id) {
    ObjectboxImpl.formsBox.get(id);
    state = ObjectboxImpl.formsBox.getAll();
  }

  void clearData() {
    state = state..clear();
  }
}
