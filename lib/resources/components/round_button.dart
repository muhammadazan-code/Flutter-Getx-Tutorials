import 'package:flutter/material.dart';
import 'package:get_x_tutorial/resources/colors/app_colors.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget({
    Key? key,
    this.buttonColor = AppColors.buttonColor,
    this.textColor = AppColors.textColor,
    required this.loading,
    this.height = 60,
    required this.onPress,
    required this.title,
    this.width = 60,
  }) : super(key: key);
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: loading
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Center(
                child: Text(
                  title,
                  style: TextTheme.of(context).titleMedium!.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                ),
              ),
      ),
    );
  }
}
