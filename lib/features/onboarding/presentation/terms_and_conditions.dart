import 'package:flutter/material.dart';
import 'package:forseven/core/constants/app_strings.dart';
import 'package:forseven/core/themes/theme.dart';
import 'package:forseven/core/utils/padding_extension.dart';
import 'package:forseven/widgets/buttons.dart';
import 'package:go_router/go_router.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {

  bool terms = false;
  bool privacy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,toolbarHeight: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => context.pop(),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                ),
                16.ph,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    AppStrings.termsAndConditions,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      height: 1.5
                    ),
                  ),
                ),
                16.ph,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: CheckboxListTile(
                    value: terms,
                    onChanged: (val) {
                      if(val != null) {
                        setState(() {
                          terms = val;
                        });
                      }
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    title: RichText(
                      text: TextSpan(
                        text: AppStrings.subText1,
                        style: TextStyle(
                          color: ForsevenTheme.darkTextColor
                        ),
                        children: [
                          TextSpan(
                            text: AppStrings.subTextTC,
                            style: TextStyle(
                              decoration: TextDecoration.underline
                            )
                          )
                        ]
                      ),
                    ),
                  ),
                ),
                5.ph,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: CheckboxListTile(
                    value: privacy,
                    onChanged: (val) {
                      if(val != null) {
                        setState(() {
                          privacy = val;
                        });
                      }
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    title: RichText(
                      text: TextSpan(
                          text: AppStrings.subText2,
                          style: TextStyle(
                              color: ForsevenTheme.darkTextColor
                          ),
                          children: [
                            TextSpan(
                                text: AppStrings.subTextPP,
                                style: TextStyle(
                                    decoration: TextDecoration.underline
                                )
                            )
                          ]
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                FSButton(
                  isDisabled: (terms == true && privacy == true) ? false : true,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ForsevenTheme.darkBlue
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Continue',
                          style: TextStyle(
                              color: ForsevenTheme.lightTextColor
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: ForsevenTheme.lightTextColor,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
