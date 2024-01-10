import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../../resource/resource.dart';
import 'dropdown_input_modal.dart';
import 'dropdown_input_page.dart';

class DropdownItem<T> {
  DropdownItem(this.text, this.value);
  final String text;
  final T value;
}

class DropdownInput<T> extends StatefulWidget {
  const DropdownInput({
    Key? key,
    this.items = const [],
    this.onChanged,
    this.value,
    this.errorText,
    this.placeholder,
    this.suffixIcon,
    this.contentPadding,
    this.isRequired = false,
    this.readOnly = false,
    this.markRequired = false,
    this.textInputAction = TextInputAction.next,
    this.hideSelectedItem = false,
    this.bottomItem,
  }) : super(key: key);
  final List<DropdownItem<T>?>? items;

  final Function(T value)? onChanged;
  final T? value;
  final String? errorText;
  final Widget? suffixIcon;
  final String? placeholder;
  final EdgeInsets? contentPadding;
  final bool isRequired;
  final bool readOnly;
  final bool markRequired;
  final TextInputAction textInputAction;
  final bool hideSelectedItem;
  final Widget? bottomItem;

  @override
  DropdownInputState<T> createState() => DropdownInputState<T>();
}

class DropdownInputState<T> extends State<DropdownInput<T>> {
  static const int maxItemsInModalBottomAllowed = 5;
  TextEditingController controller = TextEditingController();
  T? _currentValue;

  final FocusNode _focusNode = FocusNode();
  bool _hasFocus = false;

  T? get currentValue => _currentValue;
  set currentValue(T? value) {
    _currentValue = value;

    setState(() {
      final text = _getSelectedItem(_currentValue)?.text ?? '';
      controller.text = text;
    });
  }

  List<DropdownItem<T>?>? get sortedItem {
    final listItem = widget.items ?? [];

    return listItem;
  }

  DropdownItem? _getSelectedItem(T? value) {
    return sortedItem?.firstWhereOrNull((element) => element?.value == value);
  }

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(onFocus);
    currentValue = widget.value;
  }

  void onFocus() {
    setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    currentValue = widget.value;
  }

  @override
  void didUpdateWidget(covariant DropdownInput<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      currentValue = widget.value;
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(onFocus);
    _focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  bool isColorFilled() {
    if (widget.readOnly || _hasFocus) {
      return false;
    }
    if (!_hasFocus && _currentValue == null) {
      return true;
    }
    {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      controller: controller,
      focusNode: _focusNode,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        hintText: widget.placeholder,
        hintStyle: AppTextStyles.bodySmall,
        errorText: widget.errorText,
        errorStyle: AppTextStyles.bodySmall.copyWith(color: AppColors.error),
        contentPadding: widget.contentPadding,
        suffixIcon: _buildSuffixIcon(widget.readOnly),
        suffixIconConstraints: const BoxConstraints(minWidth: Sizes.s20, minHeight: Sizes.s20),
        border: _defaultBorder(),
        enabledBorder: _defaultBorder(),
        focusedBorder: _defaultBorder(),
        errorBorder: _defaultBorder(),
        focusedErrorBorder: _defaultBorder(),
      ),
      onTap: () => _onInputPressed(),
    );
  }

  InputBorder _defaultBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: widget.errorText == null ? AppColors.gray3 : AppColors.error,
      ),
    );
  }

  Widget _buildSuffixIcon(bool readOnly) {
    return Padding(
      padding: AppSpacing.edgeInsetsOnlyRight16,
      child: SizedBox(
        width: Sizes.s20,
        child: widget.suffixIcon ??
            Icon(
              Icons.expand_more,
              color: readOnly ? AppColors.gray3 : _getColor(_hasFocus),
            ),
      ),
    );
  }

  Future<void> _onInputPressed() async {
    if (widget.readOnly) {
      return;
    }
    final value = await _showDialogPicker();

    if (value != null) {
      final selectedValue = value as DropdownItem<T>;

      currentValue = selectedValue.value;
      widget.onChanged!(selectedValue.value);
    }
  }

  Future _showDialogPicker() {
    if ((sortedItem?.length ?? 0) < maxItemsInModalBottomAllowed) {
      return showModalBottomSheet(
        context: context,
        enableDrag: true,
        barrierColor: AppColors.lightGray3,
        builder: (context) => DropdownModal(
          items: sortedItem,
          value: widget.value,
          label: widget.placeholder,
          hideSelectedItem: widget.hideSelectedItem,
          bottomItem: widget.bottomItem,
        ),
      );
    }

    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DropdownPage<T>(
          items: sortedItem,
          value: widget.value,
          label: widget.placeholder,
          hideSelectedItem: widget.hideSelectedItem,
          bottomItem: widget.bottomItem,
        ),
      ),
    );
  }

  Color _getColor(bool hasFocus) {
    return hasFocus ? AppColors.primary : AppColors.dark;
  }
}
