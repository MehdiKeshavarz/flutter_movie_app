import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:move_app/config/global/constant/image_route.dart';
import 'package:move_app/config/global/utils/show_model.dart';
import 'package:move_app/config/theme/app_theme.dart';

import '../../../config/global/constant/app_static_data.dart';
import '../../../config/theme/app_color.dart';
import 'explore_modal_item.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            SearchBox(),
            SizedBox(width: 6),
            FilterButton(),
          ],
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModelApp(
        context: context,
        modalTitle: 'sort & filter',
        primaryButtonTitle: 'Apply',
        secondaryButtonTitle: 'Reset ',
        initChildSize: 0.7,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        mainModalContent: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: AppStaticData.exploreModalTitles.length,
          itemBuilder: (context, index) => ExploreModalItem(index: index),
        ),
      ),
      child: Container(
        height: 56,
        width: 56,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: AppColors.redTransparent.withOpacity(0.1),
        ),
        child: SvgPicture.asset(AppImageRoute.iconFilter),
      ),
    );
  }
}

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final FocusNode searchFocusNode = FocusNode();

  @override
  void initState() {
    searchFocusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    searchFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: 56,
        decoration: BoxDecoration(
          color: AppDynamicColorBuilder.getGrey100AndDark2(context),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: searchFocusNode.hasFocus
                  ? theme.primaryColor
                  : AppDynamicColorBuilder.getGrey100AndDark2(context),
              width: 1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          focusNode: searchFocusNode,
          style: theme.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              color: AppDynamicColorBuilder.getGrey900AndWhite(context)),
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'search',
            hintStyle: theme.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: AppDynamicColorBuilder.getGrey600AndGrey400(context),
            ),
            icon: SvgPicture.asset(
              AppImageRoute.iconSearch,
              color: searchFocusNode.hasFocus
                  ? theme.primaryColor
                  : AppDynamicColorBuilder.getGrey600AndGrey400(context),
            ),
          ),
        ),
      ),
    );
  }
}
