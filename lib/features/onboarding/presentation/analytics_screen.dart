import 'package:flutter/material.dart';
import 'package:forseven/core/constants/app_strings.dart';
import 'package:forseven/core/themes/theme.dart';
import 'package:forseven/core/utils/context_extensions.dart';
import 'package:forseven/core/utils/padding_extension.dart';
import 'package:forseven/widgets/buttons.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
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
                Text(
                  AppStrings.analytics,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w500
                  ),
                ),
                16.ph,
                Text(
                  AppStrings.analyticsContent1,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    height: 1.6
                  ),
                ),
                20.ph,
                Text(
                  AppStrings.analyticsContent2,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      height: 1.6
                  ),
                ),
                20.ph,
                Text(
                  AppStrings.analyticsContent3,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      height: 1.6
                  ),
                ),
                Text(
                  'Privacy Policy',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      height: 1.6,
                    decoration: TextDecoration.underline
                  ),
                )
              ],
            ),
            Column(
              children: [
                FSButton(
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
                          'Continue with analytics',
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
                20.ph,
                FSOutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: ForsevenTheme.darkBlue)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Continue without analytics',
                          style: TextStyle(
                              color: ForsevenTheme.darkTextColor
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: ForsevenTheme.darkTextColor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
