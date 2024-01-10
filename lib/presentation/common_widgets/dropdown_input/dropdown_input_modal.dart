import 'package:flutter/material.dart';

import '../../resource/resource.dart';
import '../common_widgets.dart';
import 'dropdown_input.dart';

class DropdownModal<T> extends StatelessWidget {
  const DropdownModal({
    Key? key,
    this.items,
    this.value,
    this.label,
    this.hideSelectedItem = false,
    this.bottomItem,
  }) : super(key: key);

  final List<DropdownItem<T>?>? items;
  final T? value;
  final String? label;
  final bool hideSelectedItem;
  final Widget? bottomItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.edgeInsetsAll16,
      child: Material(
        child: Wrap(
          children: [
            ListTile(
              title: Text(
                label ?? '',
                style: AppTextStyles.bodyMedium.copyWith(color: AppColors.gray3),
              ),
            ),
            ...List.generate(items!.length + 1, (index) {
              if (index == items!.length) {
                return bottomItem ?? const SizedBox.shrink();
              }
              if (value == items![index]!.value && hideSelectedItem) {
                return const SizedBox.shrink();
              }

              return ListTile(
                title: Text(items![index]!.text),
                onTap: () {
                  final DropdownItem<T> value = items![index]!;
                  // onChanged!(value);
                  Navigator.pop(context, value);
                },
                trailing: value == items![index]!.value
                    ? const Icon(
                        AppIcons.check,
                      )
                    : null,
              );
            }),
            AppSpacing.gapH16,
          ],
        ),
      ),
    );
  }
}
