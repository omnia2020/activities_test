import 'package:activities/src/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/activity_card.dart';
import '../widgets/home_banners.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH20,
            const Text(
              'اكتشف افضل الفعاليات',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            gapH12,
            const HomeBanners(
              images: [
                'https://ar.timeoutriyadh.com/cloud/artimeoutriyadh/2023/04/16/Riyadh-season-boulevard-world-fireworks.jpg',
                'https://cdn.saudigates.net/wp-content/uploads/2022/10/%D9%85%D9%86%D8%A7%D8%B7%D9%82-%D9%81%D8%B9%D8%A7%D9%84%D9%8A%D8%A7%D8%AA-%D9%85%D9%88%D8%B3%D9%85-%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6-2022.jpeg'
              ],
            ),
            gapH12,
            const Text(
              'ابرز الفعاليات',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            gapH12,
            SizedBox(
              height: 30.screenHeight,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.3.screenWidth),
                    child: const ActivityCard(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
