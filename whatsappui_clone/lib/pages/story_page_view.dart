import 'package:flutter/material.dart';
import 'package:story_view/story_controller.dart';
import 'package:story_view/story_view.dart';


class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text("Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
        Colors.blue,
        fontSize: 20.0,
        roundedTop: true),
       StoryItem.pageImage(NetworkImage(
          "https://images.unsplash.com/photo-1541233349642-6e425fe6190e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")),
      StoryItem.pageGif(
          "https://media.giphy.com/media/VJ4sec04RAg5YP6Ozp/giphy.gif",
          imageFit: BoxFit.fitWidth)
    ];
    return StoryView(
      storyItems,
      controller: controller,
      inline: false,
      repeat: false,
      onStoryShow: (s) {
        print("Showing a story");
      },
      onComplete: () {
        print("Completed a cycle");
      },
    );
  }
}