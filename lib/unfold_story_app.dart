import 'package:flutter/material.dart';
import 'package:mi_flash_card/unfoldStoryAppAssets/story_data.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';

class UnfoldStoryApp extends StatelessWidget {
  const UnfoldStoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 51, 43),
      appBar: AppBar(title: const Text('Unfold Story')),
      drawer: const MyNavigationDrawer(),
      body: const StorySection(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class StorySection extends StatefulWidget {
  const StorySection({super.key});

  @override
  State<StorySection> createState() => _StorySectionState();
}

class _StorySectionState extends State<StorySection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.teal.shade900.withOpacity(0.25),
            BlendMode.dstATop,
          ),
          image: const AssetImage('images/tealspacebackground.jpg'),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 50.0,
      ),
      constraints: const BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  storyBrain.getStory(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(1);
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal[500],
                ),
                child: Text(
                  storyBrain.getStoryChoice1(),
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: storyBrain.secondButtonVisibility(),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(2);
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal[500],
                  ),
                  child: Text(
                    storyBrain.getStoryChoice2(),
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
