import 'package:flutter/material.dart';
import 'package:forseven/core/constants/image_paths.dart';
import 'package:forseven/core/themes/theme.dart';
import 'package:forseven/core/utils/padding_extension.dart';
import 'package:forseven/features/explore/data/models/story_model.dart';
import 'package:forseven/widgets/buttons.dart';

class StoryCard extends StatefulWidget {
  final Story story;
  const StoryCard({super.key, required this.story});

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Image.asset(
              widget.story.image,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.story.title,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: ForsevenTheme.lightTextColor
                    ),
                  ),
                  20.ph,
                  FSButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ForsevenTheme.primary,
                      foregroundColor: ForsevenTheme.darkBlue
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Read More',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 16,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
