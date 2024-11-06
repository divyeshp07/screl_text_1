import 'package:objectbox/objectbox.dart';

@Entity() // ObjectBox annotation to define an entity
class FormDataEntity {
  @Id() // ObjectBox annotation for an auto-incrementing ID
  int id;

  // Fields that represent product details
  String subject;
  String previewText;
  String fromName;
  String fromEmail;
  FormDataEntity({
    this.id = 0,
    required this.subject,
    required this.previewText,
    required this.fromName,
    required this.fromEmail,
  });
}
