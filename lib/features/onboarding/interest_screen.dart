import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone_again/constants/gaps.dart';
import 'package:tiktok_clone_again/constants/sizes.dart';

class InterestScreen extends StatelessWidget {
  const InterestScreen({super.key});
  static const interests = [
    "Daily Life",
    "Comedy",
    "Entertainment",
    "Animals",
    "Food",
    "Beauty & Style",
    "Drama",
    "Learning",
    "Talent",
    "Sports",
    "Auto",
    "Family",
    "Fitness & Health",
    "DIY & Life Hacks",
    "Arts & Crafts",
    "Dance",
    "Outdoors",
    "Oddly Satisfying",
    "Home & Garden",
    "Daily Life",
    "Comedy",
    "Entertainment",
    "Animals",
    "Food",
    "Beauty & Style",
    "Drama",
    "Learning",
    "Talent",
    "Sports",
    "Auto",
    "Family",
    "Fitness & Health",
    "DIY & Life Hacks",
    "Arts & Crafts",
    "Dance",
    "Outdoors",
    "Oddly Satisfying",
    "Home & Garden",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose your interests"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: Sizes.size24,
            right: Sizes.size24,
            bottom: Sizes.size16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v32,
              const Text(
                "Coose your interests",
                style: TextStyle(
                  fontSize: Sizes.size40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gaps.v20,
              const Text(
                "Get better video recommendations",
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              Gaps.v64,
              Wrap(
                runSpacing: 15,
                spacing: 15,
                children: [
                  for (var interst in interests)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: Sizes.size16,
                        horizontal: Sizes.size24,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                      child: Text(
                        interst,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 2,
        height: 120,
        child: Padding(
          padding: const EdgeInsets.only(
            top: Sizes.size1,
            bottom: Sizes.size40,
            left: Sizes.size12,
            right: Sizes.size12,
          ),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              "Next",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: Sizes.size16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
