import 'package:flutter/material.dart';
import 'package:stock_ui/constants/assets.dart';
import 'package:stock_ui/src/common_widget/buttons/icon_button.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/core/resources/theme/colors/styles.dart';
import 'package:stock_ui/src/core/utils/extinsions/sized_box_extinsion.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/header_card.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/stocks_activity/card.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/watch_list_widgets/vertical_watchlist.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/watch_list_widgets/watchlist_header.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      padding: AppStyles.gloablPagePadding,

      children: [
        AppBar(
          titleSpacing: 0,
          automaticallyImplyLeading: true,
          excludeHeaderSemantics: true,
          leading: const CustomeIconButton(
            onPressed: null,
            path: Assets.assetsImagesLogo,
            height: 30,
          ),
          title: const Text('Alex Julia'),
          actions: [
            CustomeIconButton(
                onPressed: () {}, path: Assets.assetsImagesSearch),
            CustomeIconButton(onPressed: () {}, path: Assets.assetsImagesBell),
          ],
        ),
        16.sh,
        const HeaderCard(),
        32.sh,
        const WatchListHeader(),
        16.sh,
        const VerticalWatchList(),
        16.sh,
        Text(
          'Stocks Acivity',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.w800,
              ),
        ),
        16.sh,
        const StocksActivityCard(),
        16.sh,
        const StocksActivityCard(),
        16.sh,
        const StocksActivityCard(),
      ],
    );
  }
}
