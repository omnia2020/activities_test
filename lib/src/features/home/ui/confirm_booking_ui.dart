import 'package:activities/src/core/routes/app_router.dart';
import 'package:activities/src/core/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../core/constants/app_sizes.dart';
import '../widgets/ticket_counter.dart';

class ConfirmBookingUi extends StatefulWidget {
  const ConfirmBookingUi({Key? key}) : super(key: key);

  @override
  State<ConfirmBookingUi> createState() => _ConfirmBookingUiState();
}

class _ConfirmBookingUiState extends State<ConfirmBookingUi> {
  DateTime selectedDate = DateTime.now();
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
                  gapH12,
                  Text(
                    'الرياض: جولة موجّهة لمدة نصف يوم مع اصطحاب من الفندق',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  gapH16,
                  Text(
                    'اختر تاريخ الحجز',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  gapH12,
                  InkWell(
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(
                          const Duration(days: 30),
                        ),
                      ).then((value) {
                        if (value != null) {
                          setState(() {
                            selectedDate = value;
                          });
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.5.screenWidth,
                            vertical: 1.1.screenHeight),
                        child: Text(
                          DateFormat.yMMMEd().format(selectedDate),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  gapH48,
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 4.5.screenWidth,
                          vertical: 1.1.screenHeight),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الرياض: جولة موجّهة لمدة نصف يوم مع اصطحاب من الفندق',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          gapH12,
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Adult (12 years and above)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const TicketCounter(),
                            ],
                          )
                        ],
                      ),
                    ),
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
            title: 'ادفع 20.00 ريال',
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "تم الحجز بنجاح",
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0);
              context.router.replaceAll([const HomeRoute()]);
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
