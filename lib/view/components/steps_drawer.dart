import 'package:flutter/material.dart';
import 'package:screl_test_1/core/model/form_steps_model.dart';
import 'package:screl_test_1/core/theme/extension/app_theme_extension.dart';

class FormStepDrawer extends StatelessWidget {
  const FormStepDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: context.colors.secondary,
      child: ListView.builder(
        itemCount: sidebarSteps.length,
        itemBuilder: (context, index) {
          final item = sidebarSteps[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: context.colors.primary,
              child: Center(
                child: Text("${index + 1}"),
              ),
            ),
            title: Text(
              item.title,
              style: context.typography.body,
            ),
            subtitle: Text(
              item.description,
              style: context.typography.bodySmall,
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}

// drawer items
List<FormStepModel> sidebarSteps = [
  const FormStepModel(
    title: 'Create New Campaign',
    description: 'Fill out these details and get your campaign ready',
    // icon: Icons.model_training,
  ),
  const FormStepModel(
    title: 'Bidding Strategy',
    description: 'Optimize your campaign reach with auctions',
    // icon: Icons.view_list,
    // status: StepStatus.pending,
  ),
  const FormStepModel(
    title: 'Site Link',
    description: 'Set up your custom journey',
    // icon: Icons.account_tree,
    // status: StepStatus.pending,
  ),
  const FormStepModel(
    title: 'Review Campaign',
    description: 'Review your campaign before submitting',
    // icon: Icons.check_circle,
    // status: StepStatus.pending,
  ),
];
