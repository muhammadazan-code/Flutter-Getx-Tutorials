import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/resources/colors/app_colors.dart';

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({
    super.key,
    required this.onPress,
  });

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Icon(
            Icons.cloud_off,
            color: AppColors.redColor,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'internet_exception'.tr,
              style: TextTheme.of(context).titleMedium!.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SizedBox(
            height: Get.height * .09,
          ),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              color: AppColors.buttonColor,
              height: 60,
              width: 200,
              child: Center(
                child: Text(
                  "Retry",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
