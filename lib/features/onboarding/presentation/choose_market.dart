import 'package:flutter/material.dart';
import 'package:forseven/core/constants/app_strings.dart';
import 'package:forseven/core/themes/theme.dart';
import 'package:forseven/core/utils/padding_extension.dart';
import 'package:forseven/widgets/buttons.dart';
import 'package:forseven/widgets/input_widgets.dart';
import 'package:go_router/go_router.dart';

class ChooseMarketScreen extends StatefulWidget {
  const ChooseMarketScreen({super.key});

  @override
  State<ChooseMarketScreen> createState() => _ChooseMarketScreenState();
}

class _ChooseMarketScreenState extends State<ChooseMarketScreen> {

  List<String> marketOptions = [
    "United Kingdom",
    "United States",
    "Canada - English",
    "Canada - French",
    "France",
    "Germany"
  ];

  TextEditingController marketCtrl = TextEditingController();

  @override
  void initState() {
    marketCtrl.text = "United Kingdom";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppStrings.chooseYourMarket,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                32.ph,
                GestureDetector(
                  onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: marketOptionsWidget(),
                      ),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)
                          )
                      ),
                      isScrollControlled: true
                  ),
                  child: FSInputField(
                    labelText: 'Market',
                    suffix: Icon(
                      Icons.keyboard_arrow_down_outlined
                    ),
                    enabled: false,
                    controller: marketCtrl,
                    fillColor: ForsevenTheme.grey.withAlpha(150),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  AppStrings.marketDisclaimer,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.7
                  ),
                ),
                20.ph,
                FSButton(
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
                          size: 18,
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

  Widget marketOptionsWidget() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20)
        ),
      ),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'CANCEL',
                style: TextStyle(
                  fontSize: 14, color: ForsevenTheme.darkTextColor
                ),
              ),
            ),
            32.ph,
            ...marketOptions.map((item) => Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      marketCtrl.text = item;
                    });
                    context.pop();
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      marketCtrl.text == item ? Icon(
                        Icons.done,
                        color: ForsevenTheme.darkBlue,
                      ) : SizedBox(width: 40,)
                    ],
                  ),
                ),
                20.ph
              ],
            ))
          ],
        ),
      ),
    );
  }
}
