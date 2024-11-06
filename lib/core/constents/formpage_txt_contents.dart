import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'formpage_txt_contents.g.dart';

class FormPageConstents {
  final txtbodytitle = "Fill out these details to build your broadcast";
  final txtappbarTitle = "Create new email campaign";
  final txtsbjct = 'subject';
  final txtsujctlabl = 'enter subject';
  final txtpreviewtxt = 'Preview Text';
  final txtprelable = 'enter text';
  final txtname = 'form Name';
  final txtemail = ' form Email';
  final txtemaillbl = 'hellow@gmail.com';
  final txtnamelabl = 'hello';
  final txttoogletxtfirst = 'Run Only once per Customer';
  final txttoogletxtsecnd = 'custom audience';
  final txtsavedraft = 'Save Draft';
  final txtnextStep = 'Next Step';

  // richtext const
  final txtheilightedFirstportion = "custom domain";
  final txtheilightedsecondportion = "connect your email service provider";
  final txtyoucansetup = "You can set up a ";
  final txtor = " or ";
  final txtcnagethis = " to change this.";
}

@riverpod
FormPageConstents formPageConstents(Ref ref) {
  return FormPageConstents();
}
