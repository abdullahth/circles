import 'package:application/consts/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int i) changeCallback;
  const CustomBottomNavBar(
      {Key? key, required this.currentIndex, required this.changeCallback})
      : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final tabs = [
    ['home'.tr, Icons.home_filled],
    ['offers'.tr, Icons.local_offer],
    ['groups'.tr, Icons.category_rounded],
    ['account'.tr, Icons.person],
  ];
  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    final theme = AppTheme(context);
    return SizedBox(
      width: deviceSizes.width,
      height: deviceSizes.height * 0.15,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              height: deviceSizes.height * 0.15,
              right: 0,
              child: Center(
                child: Container(
                  width: deviceSizes.width * 0.8,
                  height: deviceSizes.height * 0.08,
                  decoration: BoxDecoration(
                      color: theme.accent,
                      borderRadius: BorderRadius.circular(100)),
                ),
              )),
          Positioned(
            left: 0,
            right: 0,
            height: deviceSizes.height * 0.15,
            child: Container(
              width: deviceSizes.width * 0.8,
              height: deviceSizes.height * 0.15,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: deviceSizes.width * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    tabs.length,
                    (index) => InkWell(
                      onTap: () {
                        widget.changeCallback.call(index);
                      },
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: AnimatedContainer(
                        width: widget.currentIndex == index
                            ? deviceSizes.width * 0.175
                            : deviceSizes.width * 0.135,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                        decoration: BoxDecoration(
                          color: widget.currentIndex == index
                              ? theme.accent
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                            width: deviceSizes.width * 0.135,
                            decoration: BoxDecoration(
                              color: widget.currentIndex == index
                                  ? theme.primary
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Column(
                              children: [
                                const Spacer(flex: 4),
                                Icon(tabs[index].last as IconData,
                                    size: 16,
                                    color: widget.currentIndex == index
                                        ? theme.accent
                                        : theme.primary),
                                if (widget.currentIndex == index) ...[
                                  const Spacer(),
                                  Text(
                                    tabs[index].first as String,
                                    style: theme.styleFive,
                                  )
                                ],
                                const Spacer(flex: 4),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
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
