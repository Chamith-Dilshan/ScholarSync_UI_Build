import 'package:flutter/material.dart';
import 'package:scholarsync/theme/palette.dart';

class CustomSearchBar extends StatefulWidget {
  final String hint;
  final Color? textColor;
  final Color? iconColor;
  final ValueChanged<String>? onSearchSubmitted;

  const CustomSearchBar({
    Key? key,
    required this.hint,
    this.textColor = PaletteLightMode.secondaryTextColor,
    this.iconColor = PaletteLightMode.secondaryTextColor,
    this.onSearchSubmitted,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  late FocusNode _focusNode;
  Color? _currentIconColor;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _currentIconColor = widget.iconColor;
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _currentIconColor = _focusNode.hasFocus
          ? PaletteLightMode.secondaryGreenColor
          : widget.iconColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(11, 24, 43, 0.08),
            offset: Offset(8, 8),
            blurRadius: 24,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          // Set hoverColor to transparent to remove the transparency effect
          hoverColor: PaletteLightMode.transparentColor,
        ),
        child: TextField(
          onSubmitted: widget.onSearchSubmitted,
          style: TextStyle(color: widget.textColor),
          cursorColor: PaletteLightMode.secondaryGreenColor,
          focusNode: _focusNode,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: widget.hint,
            hintStyle: TextStyle(color: widget.textColor),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 20, right: 27),
              child: Icon(Icons.search, color: _currentIconColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.0),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: PaletteLightMode.secondaryGreenColor, width: 1.0),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
