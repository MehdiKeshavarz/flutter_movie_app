import 'package:flutter/material.dart';
import 'package:move_app/config/global/constant/app_static_data.dart';
import 'package:move_app/config/theme/app_color.dart';

class MoviesFilter extends StatefulWidget {
  MoviesFilter({super.key});

  @override
  State<MoviesFilter> createState() => _MoviesFilterState();
}

class _MoviesFilterState extends State<MoviesFilter> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            margin: EdgeInsets.only(
              right: index == 4 ? 24 : 0,
              left: index == 0 ? 24 : 12,
            ),
            decoration: BoxDecoration(
                color: selectedIndex == index
                    ? theme.primaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    width: 2,
                    color: selectedIndex == index
                        ? Colors.transparent
                        : theme.primaryColor)),
            child: Center(
              child: Text(
                AppStaticData.moviesFilter[index],
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: selectedIndex == index
                      ? AppColors.white
                      : theme.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
