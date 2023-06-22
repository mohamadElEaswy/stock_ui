import 'package:flutter/material.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';

class WatchListHeader extends StatelessWidget {
  const WatchListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Watchlist',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.w800,
              ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'See All',
            style: TextStyle(
              color: AppColors.lightGreen,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
