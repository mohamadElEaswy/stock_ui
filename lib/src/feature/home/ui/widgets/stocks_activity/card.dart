import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/core/utils/extinsions/sized_box_extinsion.dart';

class StocksActivityCard extends StatelessWidget {
  const StocksActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.globalGreyColor),
        // color: AppColors.darkBlue,
      ),
      height: 13.h,
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.globalGreyColor,
                child: Icon(
                  Icons.paypal,
                  color: AppColors.darkBlue,
                ),
              ),
              8.sw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nvidia',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  4.sh,
                  Text(
                    'Nvidia',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor.withOpacity(.5),
                        ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '25.94',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.lightGreen,
                      fontWeight: FontWeight.w800,
                      fontSize: 12.sp,
                    ),
              ),
              2.sh,
              Row(
                children: [
                  Icon(
                    CupertinoIcons.arrow_up,
                    color: AppColors.lightGreen,
                    size: 12.sp,
                  ),
                  Text(
                    '0.14%',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.lightGreen,
                          fontWeight: FontWeight.w600,
                          fontSize: 8.sp,
                        ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$227.26',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.darkBlue,
                      fontWeight: FontWeight.w800,
                      fontSize: 12.sp,
                    ),
              ),
              2.sh,
              Text(
                '10 shares',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 8.sp,
                      color: AppColors.greyColor.withOpacity(.5),
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
