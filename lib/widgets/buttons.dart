import 'package:flutter/material.dart';
import 'package:forseven/core/themes/theme.dart';

class FSButton extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final bool isDisabled;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final Color? indicatorColor;

  const FSButton({super.key, required this.child, this.isLoading = false,
    this.onPressed, this.style, this.isDisabled = false, this.indicatorColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: isDisabled || isLoading? null : ()=> onPressed?.call(),
      child: isLoading ? SizedBox(
        height: 20, width: 20,
        child: CircularProgressIndicator(color: indicatorColor??Colors.white,),
      ) : child,
    );
  }
}

class FSOutlinedButton extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final bool isDisabled;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final Color? indicatorColor;
  const FSOutlinedButton({super.key, required this.child,
    this.isLoading = false, this.onPressed, this.isDisabled = false, this.style, this.indicatorColor});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: style??OutlinedButton.styleFrom(
          side: BorderSide(color: isDisabled? ForsevenTheme.grey : ForsevenTheme.darkBlue)
      ),
      onPressed: isDisabled || isLoading? null : ()=> onPressed?.call(),
      child: isLoading ? SizedBox(
        height: 20, width: 20,
        child: CircularProgressIndicator(color: indicatorColor??ForsevenTheme.darkBlue,),
      ) : child,
    );
  }
}

class FSTextButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final bool isDisabled;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final Color? indicatorColor;

  const FSTextButton({super.key, required this.text, this.isLoading = false,
    this.onPressed, this.style, this.isDisabled = false, this.indicatorColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style,
      onPressed: isDisabled || isLoading? null : ()=> onPressed?.call(),
      child: isLoading ? SizedBox(
        height: 20, width: 20,
        child: CircularProgressIndicator(color: indicatorColor??Colors.white,),
      ) : Text(text, textAlign: TextAlign.center, style: TextStyle(fontFamily: ForsevenTheme.fontFamily),),
    );
  }
}

class FSOutlinedIconButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final bool isDisabled;
  final Widget icon;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final Color? indicatorColor;

  const FSOutlinedIconButton({super.key, required this.text, this.isLoading = false,
    this.onPressed, this.style, this.isDisabled = false, this.indicatorColor, required this.icon});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: style??OutlinedButton.styleFrom(
          side: BorderSide(width: 1, color: ForsevenTheme.darkBlue)
      ),
      onPressed: isDisabled || isLoading? null : ()=> onPressed?.call(),
      icon: isLoading ? const SizedBox() : icon,
      label: isLoading ? SizedBox(
        height: 20, width: 20,
        child: CircularProgressIndicator(color: indicatorColor??Colors.white,),
      ) : Text(text, textAlign: TextAlign.center, style: TextStyle(fontFamily: ForsevenTheme.fontFamily),),
    );
  }
}

class FSIconButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final bool isDisabled;
  final Widget icon;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final Color? indicatorColor;

  const FSIconButton({super.key, required this.text, this.isLoading = false,
    this.onPressed, this.style, this.isDisabled = false, this.indicatorColor, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: style,
      onPressed: isDisabled || isLoading? null : ()=> onPressed?.call(),
      icon: isLoading ? const SizedBox() : icon,
      iconAlignment: IconAlignment.end,
      label: isLoading ? SizedBox(
        height: 20, width: 20,
        child: CircularProgressIndicator(color: indicatorColor??Colors.white,),
      ) : Text(text, textAlign: TextAlign.center, style: TextStyle(fontFamily: ForsevenTheme.fontFamily),),
    );
  }
}