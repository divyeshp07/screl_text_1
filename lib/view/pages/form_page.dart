import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_test_1/core/constents/formpage_txt_contents.dart';
import 'package:screl_test_1/core/model/form_data_entity.dart';
import 'package:screl_test_1/core/model/form_data_model.dart';
import 'package:screl_test_1/core/theme/extension/app_theme_extension.dart';
import 'package:screl_test_1/view/components/main_btn.dart';
import 'package:screl_test_1/view/components/richtxt.dart';
import 'package:screl_test_1/view/components/steps_drawer.dart';
import 'package:screl_test_1/view/components/textfeil.dart';
import 'package:screl_test_1/view/components/toggle_btn.dart';
import 'package:screl_test_1/view/viewmodel/db_provider.dart';

class FormPage extends ConsumerWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController subjectController = TextEditingController();
    TextEditingController previewTextController = TextEditingController();
    TextEditingController fromNameController = TextEditingController();
    TextEditingController fromEmailController = TextEditingController();
    final constants = ref.watch(formPageConstentsProvider);

    // Get the width of the screen to determine layout type
    double screenWidth = MediaQuery.of(context).size.width;
    bool isTabletOrDesktop = screenWidth > 800;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(constants.txtappbarTitle,
            style: context.typography.h3SemiBold),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: context.spaces.space_200,
                right: context.spaces.space_200,
                top: context.spaces.space_200),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: isTabletOrDesktop
                              ? Alignment.center
                              : Alignment.centerLeft,
                          child: Text(
                            constants.txtbodytitle,
                            style: context.typography.bodySemibold,
                          ),
                        ),
                        SizedBox(height: context.spaces.space_150),
                        buildFieldLabel(context, constants.txtsbjct),
                        TextfeildWidget(
                          hintTxt: constants.txtsujctlabl,
                          controller: subjectController,
                          validator: (value) =>
                              value!.isEmpty ? 'Please enter a subject' : null,
                        ),
                        SizedBox(height: context.spaces.space_150),
                        buildFieldLabel(context, constants.txtpreviewtxt),
                        TextfeildWidget(
                          maxlength: 50,
                          hintTxt: constants.txtprelable,
                          controller: previewTextController,
                          validator: (value) => value!.isEmpty
                              ? 'Please enter preview text'
                              : null,
                          maxLines: isTabletOrDesktop ? 5 : 1,
                        ),
                        SizedBox(height: context.spaces.space_150),
                        if (isTabletOrDesktop)
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    buildFieldLabel(context, constants.txtname),
                                    TextfeildWidget(
                                      hintTxt: constants.txtnamelabl,
                                      controller: fromNameController,
                                      validator: (value) => value!.isEmpty
                                          ? 'Please enter your name'
                                          : null,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: context.spaces.space_100),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    buildFieldLabel(
                                        context, constants.txtemail),
                                    TextfeildWidget(
                                      hintTxt: constants.txtemaillbl,
                                      controller: fromEmailController,
                                      validator: (value) => value!.isEmpty
                                          ? 'Please enter your email'
                                          : null,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        else
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildFieldLabel(context, constants.txtname),
                              TextfeildWidget(
                                hintTxt: constants.txtnamelabl,
                                controller: fromNameController,
                                validator: (value) => value!.isEmpty
                                    ? 'Please enter your name'
                                    : null,
                              ),
                              SizedBox(height: context.spaces.space_150),
                              buildFieldLabel(context, constants.txtemail),
                              TextfeildWidget(
                                hintTxt: constants.txtemaillbl,
                                controller: fromEmailController,
                                validator: (value) => value!.isEmpty
                                    ? 'Please enter your email'
                                    : null,
                              ),
                            ],
                          ),
                        SizedBox(height: context.spaces.space_150),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(constants.txttoogletxtfirst,
                                style: context.typography.body),
                            const ToggleBtn(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(constants.txttoogletxtsecnd,
                                style: context.typography.body),
                            const ToggleBtn(),
                          ],
                        ),
                        SizedBox(height: context.spaces.space_200),
                        const RichTextWidget(),
                        SizedBox(height: context.spaces.space_200),
                        const Divider(),
                        SizedBox(height: context.spaces.space_100),
                        Row(
                          children: [
                            MainBtn(
                                flex: 4,
                                onPress: () {
                                  ref.watch(formDbProvider.notifier).putData(
                                      FormDataEntity(
                                          subject: subjectController.text,
                                          previewText:
                                              previewTextController.text,
                                          fromName: fromNameController.text,
                                          fromEmail: fromEmailController.text));
                                },
                                text: constants.txtsavedraft,
                                colorborder: context.colors.border),
                            SizedBox(width: context.spaces.space_100),
                            MainBtn(
                              flex: 6,
                              onPress: () {
                                // Validate form fields
                                if (formKey.currentState?.validate() ?? false) {
                                  final formData = FormDataModel(
                                    subject: subjectController.text,
                                    previewText: previewTextController.text,
                                    fromName: fromNameController.text,
                                    fromEmail: fromEmailController.text,
                                  );
                                  print(jsonEncode(formData.toJson()));
                                  // Proceed to the next step or navigate as required
                                } else {
                                  // Show an error message if needed
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Please complete all required fields'),
                                    ),
                                  );
                                }
                              },
                              text: constants.txtnextStep,
                              background: context.colors.primary,
                              foreground: context.colors.secondary,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                if (isTabletOrDesktop) const FormStepDrawer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFieldLabel(BuildContext context, String label) {
    return Text(
      label,
      style: context.typography.body,
    );
  }
}
