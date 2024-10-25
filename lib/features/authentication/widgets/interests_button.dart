import 'package:flutter/material.dart';
import 'package:tiktok_clone_again/constants/sizes.dart';

class InterestsButton extends StatefulWidget {
  const InterestsButton({
    super.key,
    required this.interst,
  });

  final String interst;

  @override
  State<InterestsButton> createState() => _InterestsButtonState();
}

class _InterestsButtonState extends State<InterestsButton> {
  bool _isSelected = false;

  void _onTap() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
          horizontal: Sizes.size24,
        ),
        decoration: BoxDecoration(
          color: _isSelected ? Theme.of(context).primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(
            Sizes.size32,
          ),
          border: Border.all(
            color: Colors.black.withOpacity(
              0.1,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              spreadRadius: 5,
            ),
          ],
        ),
        child: AnimatedDefaultTextStyle(
          style: TextStyle(
            color: _isSelected ? Colors.white : Colors.black87,
          ),
          duration: const Duration(milliseconds: 100),
          child: Text(
            widget.interst,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
