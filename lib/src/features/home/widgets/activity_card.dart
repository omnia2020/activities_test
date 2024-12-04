import 'package:activities/src/core/constants/app_sizes.dart';
import 'package:activities/src/core/routes/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(const ActivityDetailsRoute());
      },
      child: Container(
        width: 50.screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 1.3.screenHeight, horizontal: 1.3.screenWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://ar.timeoutriyadh.com/cloud/artimeoutriyadh/2023/04/16/Riyadh-season-boulevard-world-fireworks.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 10.screenHeight,
                ),
              ),
              gapH12,
              const Text(
                'مهرجان الرياض',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              gapH12,
              const Text(
                'مهرجان الرياض هو مهرجان سنوي يقام في العاصمة السعودية الرياض',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              gapH12,
              const Text(
                '20.00 SAR',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const Text(
                'الخميس 20 مايو ',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
