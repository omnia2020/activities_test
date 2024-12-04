import 'package:activities/src/core/routes/app_router.dart';
import 'package:activities/src/core/widgets/cached_images.dart';
import 'package:activities/src/core/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';

class ActivityDetailsUi extends StatelessWidget {
  const ActivityDetailsUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CachedImages(
                    img:
                        'https://ar.timeoutriyadh.com/cloud/artimeoutriyadh/2023/04/16/Riyadh-season-boulevard-world-fireworks.jpg',
                    widget: Container(
                      width: double.infinity,
                      height: 20.screenHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://ar.timeoutriyadh.com/cloud/artimeoutriyadh/2023/04/16/Riyadh-season-boulevard-world-fireworks.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  gapH12,
                  Text(
                    'الرياض: جولة موجّهة لمدة نصف يوم مع اصطحاب من الفندق',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  gapH12,
                  Text(
                    'اكتشف تاريخ الرياض: السوق، المزادات، قلعة المصمك، مع خدمة الإصطحاب من الفندق!',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  gapH12,
                  const ExpansionTile(
                    title: Text(
                      'التفاصيل',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    children: [
                      ListTile(
                        title: Text(
                          'ابدأ جولة إرشادية مدتها نصف يوم في الرياض، تبدأ بزيارة سوق الديرة التاريخي بوسط المدينة، حيث ستستكشف كنوز التراث السعودي، والسجاد العتيق، وتستمتع برائحة خشب الصندل الجذابة. شاهد مزادات مفعمة بالحيوية واكتشف مجموعة متنوعة من ملابس الرجال. بعد ذلك، تتضمن جولتك زيارة إلى حصن المصمك القريب، وهو موقع محوري في تأسيس المملكة العربية السعودية الحديثة، حيث استولى الملك عبد العزيز على السلطة في عام 1902، وكل ذلك بشكل مريح مع خدمة النقل من الفندق',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  gapH12,
                  const ExpansionTile(
                    title: Text(
                      'آهم المعلومات',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    children: [
                      ListTile(
                        title: Text(
                          'جولة إرشادية لمدة نصف يوم مع خدمة الاستقبال في الفندق في الرياض قواعد اللباس: يلزم ارتداء ملابس مناسبة للجولة',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 4.2.screenHeight, horizontal: 5.3.screenWidth),
          child: CustomButton(
            width: double.infinity,
            title: 'اختيار التذاكر',
            onPressed: () {
              context.router.push(const ConfirmBookingRoute());
            },
            backgroundColor: Colors.blue,
            isDisabled: false,
            titleStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
