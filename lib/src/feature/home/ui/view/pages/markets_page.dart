import 'package:flutter/material.dart';
import 'package:stock_ui/constants/assets.dart';
import 'package:stock_ui/src/common_widget/buttons/icon_button.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/core/resources/theme/colors/styles.dart';
import 'package:stock_ui/src/core/utils/extinsions/sized_box_extinsion.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/markets_page/markets_header.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/stocks_activity/card.dart';

class MarketsPage extends StatelessWidget {
  const MarketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: AppStyles.gloablPagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              AppBar(
                titleSpacing: 0,
                centerTitle: true,
                automaticallyImplyLeading: true,
                excludeHeaderSemantics: true,
                leading: const CustomeIconButton(
                  onPressed: null,
                  path: Assets.assetsImagesLogo,
                  height: 30,
                ),
                title: const Text('Markets'),
                actions: [
                  CustomeIconButton(
                      onPressed: () {}, path: Assets.assetsImagesBell),
                ],
              ),
              16.sh,
              const VerticalMarketsList(),
              16.sh,
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search_sharp,
                    color: AppColors.darkBlue,
                  ),
                  suffixIcon: const Icon(
                    Icons.filter_alt_rounded,
                    color: AppColors.darkBlue,
                  ),
                  labelText: 'Search',
                  labelStyle: const TextStyle(color: AppColors.greyColor),
                  filled: true,
                  fillColor: Colors.white70,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        color: AppColors.globalGreyColor, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        color: AppColors.globalGreyColor, width: 1.0),
                  ),
                  hintStyle: const TextStyle(
                    color: AppColors.globalGreyColor,
                  ),
                ),
              ),
              16.sh,
              Text(
                'Market Movers',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.darkBlue,
                      fontWeight: FontWeight.w800,
                    ),
              ),
              16.sh,
            ] +
            List.generate(
              4,
              (index) => const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: StocksActivityCard(),
              ),
            ),
      ),
    );
  }
}
