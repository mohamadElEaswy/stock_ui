import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_ui/src/core/utils/extinsions/sized_box_extinsion.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/core/resources/theme/colors/styles.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppStyles.gloablPagePadding,
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.darkBlue,
          boxShadow: const [
            BoxShadow(
              offset: Offset(40, 45),
              spreadRadius: -40,
              blurRadius: 6,
              color: AppColors.lightGreen,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Portfolio value',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '\$15,136.32',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              8.sw,
              Text(
                '2.11%',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.lightGreen,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Icon(
                CupertinoIcons.arrow_up,
                color: AppColors.lightGreen,
                size: 14,
              ),
            ],
          ),
          2.sh,
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Deposit',
                    style: Theme.of(context).textTheme.labelLarge,
                  )),
              8.sw,
              OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Withdraw',
                    style: Theme.of(context).textTheme.labelLarge,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
