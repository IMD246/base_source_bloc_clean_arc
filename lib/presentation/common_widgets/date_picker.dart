import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/constants/constants.dart';
import '../resource/resource.dart';

class DatePickerInput extends StatefulWidget {
  const DatePickerInput({
    Key? key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.errorText,
    this.suffixIcon,
    this.value,
    this.firstDate,
    this.lastDate,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.textStyle,
    this.readOnly = false,
    this.markRequired = false,
    this.contentPadding,
    this.placeholder,
  }) : super(key: key);

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(DateTime? val)? onChanged;
  final String? errorText;
  final Widget? suffixIcon;

  final DateTime? value;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final TextInputType keyboardType;
  final TextStyle? textStyle;
  final TextInputAction textInputAction;
  final bool readOnly;
  final bool markRequired;
  final EdgeInsets? contentPadding;
  final String? placeholder;

  @override
  DatePickerInputState createState() => DatePickerInputState();
}

class DatePickerInputState extends State<DatePickerInput> {
  bool _hasFocus = false;
  final FocusNode _focusNode = FocusNode();
  DateTime? _currentValue;
  TextEditingController? _controller;
  DateTime get firstDate => widget.firstDate ?? DateTime(1900);
  DateTime get lastDate => widget.lastDate ?? DateTime(2100);

  DateTime? get currentValue => _currentValue;
  DateFormat get formatter =>
      DateFormat(DateTimeFormatConstants.displayDateFormat);
  set currentValue(DateTime? value) {
    _currentValue = value;

    setState(() {
      controller.text = value != null ? formatter.format(value) : '';
    });
  }

  TextEditingController get controller {
    if (widget.controller != null) {
      return widget.controller!;
    }
    _controller ??= TextEditingController(
      text: widget.value != null ? formatter.format(widget.value!) : '',
    );

    return _controller!;
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(onFocus);
    currentValue = widget.value ?? DateTime.now();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
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
  void didUpdateWidget(covariant DatePickerInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    currentValue = widget.value;
  }

  bool isColorFilled() {
    if (widget.readOnly || _hasFocus) {
      return false;
    }
    if (!_hasFocus && _currentValue == null) {
      return true;
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      controller: controller,
      focusNode: _focusNode,
      keyboardType: TextInputType.datetime,
      style: widget.textStyle ?? AppTextStyles.bodyMedium,
      decoration: InputDecoration(
        enabledBorder: _defaultBorder(),
        focusedBorder: _defaultBorder(),
        errorBorder: _defaultBorder(),
        contentPadding: widget.contentPadding,
        errorText: widget.errorText,
        suffixIcon: widget.suffixIcon,
        hintText: widget.placeholder ?? '',
        hintStyle: AppTextStyles.bodySmall,
      ),
      onTap: _onChangeButtonPressed,
    );
  }

  InputBorder _defaultBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: widget.errorText == null ? AppColors.gray3 : AppColors.error,
      ),
    );
  }

  Future<void> _onChangeButtonPressed() async {
    if (widget.readOnly) {
      return;
    }
    final date = await showDatePicker(
      context: context,
      initialDate: currentValue ?? DateTime.now(),
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (date == null) {
      return;
    }

    currentValue = date;
    if (widget.onChanged != null) {
      widget.onChanged!(date);
    }
  }
}
