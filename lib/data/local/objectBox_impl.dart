import 'package:path/path.dart' as pathhh;
import 'package:path_provider/path_provider.dart';
import 'package:screl_test_1/core/model/form_data_entity.dart';
import 'package:screl_test_1/objectbox.g.dart';

class ObjectboxImpl {
  late final Store store;

  static late final Box<FormDataEntity> formsBox;

  // Private constructor to create an instance
  ObjectboxImpl._create(this.store) {
    formsBox = store.box<FormDataEntity>();
  }

  // Static method to initialize the store and create the service
  static Future<ObjectboxImpl> create() async {
    // Get the application document directory
    final docsDir = await getApplicationDocumentsDirectory();

    // Open the ObjectBox store
    final store =
        await openStore(directory: pathhh.join(docsDir.path, 'products'));

    // Return the created CartServices instance
    return ObjectboxImpl._create(store);
  }
}
