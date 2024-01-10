import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';
import '../resource/styles/app_colors.dart';
import '../resource/styles/gaps.dart';
import '../resource/styles/text_styles.dart';
import 'app_icon.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    this.searchController,
    this.searchFocusNode,
    this.height = Sizes.s48,
    this.radius = Sizes.s12,
    this.padding = AppSpacing.edgeInsetsH16,
    this.hintText,
    this.onChanged,
    this.autofocus = false,
    this.onClear,
    super.key,
  });

  final TextEditingController? searchController;
  final FocusNode? searchFocusNode;
  final double height;
  final double radius;
  final EdgeInsets padding;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final bool autofocus;
  final VoidCallback? onClear;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final ValueNotifier<String> _textNotifier = ValueNotifier<String>('');
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = widget.searchController ?? TextEditingController();
    _searchController.addListener(() {
      _textNotifier.value = _searchController.text;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  InputBorder _defaultBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.gray3),
      borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextField(
        controller: _searchController,
        focusNode: widget.searchFocusNode,
        onChanged: widget.onChanged,
        autocorrect: false,
        autofocus: widget.autofocus,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: AppTextStyles.bodyMedium.gray,
          border: _defaultBorder(),
          enabledBorder: _defaultBorder(),
          focusedBorder: _defaultBorder(),
          disabledBorder: _defaultBorder(),
          errorBorder: _defaultBorder(),
          contentPadding: widget.padding,
          prefixIconConstraints: const BoxConstraints(minWidth: Sizes.s20, minHeight: Sizes.s20),
          prefixIcon: const Padding(
            padding: AppSpacing.edgeInsetsH12,
            child: AppIcon(
              icon: AppIcons.search,
              color: AppColors.gray,
              size: Sizes.s16,
            ),
          ),
          suffixIcon: _buildSuffixIcon(),
          suffixIconConstraints: const BoxConstraints(maxHeight: Sizes.s24, maxWidth: Sizes.s24 + Sizes.s12),
        ),
      ),
    );
  }

  Widget? _buildSuffixIcon() {
    return ValueListenableBuilder(
      valueListenable: _textNotifier,
      builder: (_, text, __) {
        return widget.onClear != null && text.isNotEmpty ? _buildClearButton() : AppSpacing.emptyBox;
      },
    );
  }

  Widget _buildClearButton() {
    return Padding(
      padding: AppSpacing.edgeInsetsOnlyRight12,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(
            isCircle: true,
            icon: AppIcons.close,
            backgroundColor: AppColors.gray2,
            color: AppColors.white,
            onTap: widget.onClear,
            size: Sizes.s16,
            padding: AppSpacing.edgeInsetsAll4,
          ),
        ],
      ),
    );
  }
}
