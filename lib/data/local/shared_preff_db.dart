import 'package:screl_test_1/core/model/form_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> storeFormdata(FormDataModel formdata) async {
    final prefs = await _prefs;
    await prefs.setString('Subject', formdata.subject);
    await prefs.setString('PreviewText', formdata.previewText);
    await prefs.setString('FromName', formdata.fromName);
    await prefs.setString('FromEmail', formdata.fromEmail);
  }

  Future<void> clearFunction() async {
    final prefs = await _prefs;
    prefs.clear();
  }

  Future<FormDataModel?> getFormdata() async {
    final prefs = await _prefs;
    final storedSubject = prefs.getString('Subject');
    final storedPreviewtxt = prefs.getString('PreviewText');
    final storedName = prefs.getString('FromName');
    final storedEmail = prefs.getString('FromEmail');
    if (storedEmail != null &&
        storedName != null &&
        storedPreviewtxt != null &&
        storedSubject != null) {
      return FormDataModel(
          subject: storedSubject,
          previewText: storedPreviewtxt,
          fromName: storedName,
          fromEmail: storedEmail);
    }
    return null;
  }

  FormDataModel? formdata;

  Future<bool> isData() async {
    formdata = await LocalStorage().getFormdata();
    print(formdata!.fromEmail);
    print(formdata!.fromEmail);
    print(formdata!.subject);
    print(formdata!.previewText);
    return formdata == null;
  }
}
