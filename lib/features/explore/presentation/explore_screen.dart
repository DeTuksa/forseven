import 'package:flutter/material.dart';
import 'package:forseven/core/constants/image_paths.dart';
import 'package:forseven/core/utils/padding_extension.dart';
import 'package:forseven/features/explore/presentation/widgets/carousel_widget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  List<String> vidPaths = [
    ImagePaths.video1,
    ImagePaths.video2,
    ImagePaths.video3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            32.ph,
            SizedBox(
              height: 300,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => CarouselWidget(vidPath: vidPaths[index]),
                separatorBuilder: (context, index) => 4.pw,
                physics: const BouncingScrollPhysics(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
