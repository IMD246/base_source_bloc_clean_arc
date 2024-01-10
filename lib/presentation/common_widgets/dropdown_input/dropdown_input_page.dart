import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../../../core/extensions/extensions.dart';
import '../../resource/resource.dart';
import '../common_widgets.dart';
import 'dropdown_input.dart';

class DropdownPage<T> extends StatefulWidget {
  const DropdownPage({
    Key? key,
    this.items,
    this.onChanged,
    this.value,
    this.label,
    this.hideSelectedItem = false,
    this.bottomItem,
  }) : super(key: key);

  final List<DropdownItem<T>?>? items;
  final Function(T value)? onChanged;
  final T? value;
  final String? label;
  final bool hideSelectedItem;
  final Widget? bottomItem;

  @override
  DropdownPageState<T> createState() => DropdownPageState<T>();
}

class DropdownPageState<T> extends State<DropdownPage<T>> {
  final TextEditingController searchInputController = TextEditingController();
  final BehaviorSubject<List<DropdownItem<T>?>> searchItemsStream = BehaviorSubject();

  @override
  void initState() {
    super.initState();
    if (widget.items != null) {
      searchItemsStream.add(widget.items!);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      applyAutoPaddingBottom: true,
      appBar: CommonAppBar(
        text: widget.label ?? '',
        titleTextStyle: AppTextStyles.titleLarge.toColor(AppColors.black),
      ),
      body: Padding(
        padding: AppSpacing.edgeInsetsAll16,
        child: Column(
          children: [
            _buildSearchInput(),
            Expanded(
              child: StreamBuilder<List<DropdownItem<T>?>>(
                stream: searchItemsStream.stream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Container();
                  }

                  return ListView.separated(
                    padding: AppSpacing.edgeInsetsOnlyTop12,
                    separatorBuilder: (context, index) => AppSpacing.gapH12,
                    itemCount: snapshot.data!.length + 1,
                    itemBuilder: (context, index) {
                      if (index == snapshot.data!.length) {
                        return widget.bottomItem ?? const SizedBox.shrink();
                      }
                      final item = snapshot.data![index]!;
                      if (widget.value == item.value && widget.hideSelectedItem) {
                        return const SizedBox.shrink();
                      }

                      return ListTile(
                        title: Text(item.text),
                        contentPadding: EdgeInsets.zero,
                        onTap: () {
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context, item);
                          }
                        },
                        trailing: widget.value == item.value ? const Icon(AppIcons.check) : null,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSearchInputChanged(String value) {
    final searchItems = widget.items!.where((element) {
      final normalizedValue = value.trim().toLowerCase();

      return element!.text.toLowerCase().contains(normalizedValue);
    }).toList();

    searchItemsStream.add(searchItems);
  }

  Widget _buildSearchInput() {
    return CustomSearchBar(
      autofocus: true,
      onChanged: (String value) {
        _onSearchInputChanged(value);
      },
    );
  }
}
