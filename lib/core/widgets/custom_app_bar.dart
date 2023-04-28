import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';
import 'package:fruits_market/core/constant/icons_paths.dart';

import '../constant/assets_paths.dart';
import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    this.canBack,
    this.replacerIcon,
  });

  final bool? canBack;
  final Widget? replacerIcon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            canBack ?? false
                ? IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: colorScheme.onSecondary,
                  )
                : SizedBox(
                    width: 160,
                    height: 150,
                    child: Image.asset(
                      MyAssets.LOGO,
                      fit: BoxFit.cover,
                    ),
                  ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: secondaryColor.withOpacity(0.2), width: 0.1),
                  color: whiteColor,
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
              width: 60,
              height: 60,
              child: IconButton(
                onPressed: () {
                  // Scaffold.of(context).openDrawer();
                },
                icon: CustomIcon(
                  MyIcons.notification,
                  size: 80,
                  color: logoColor,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class CustomAppBarWithSearch extends StatefulWidget {
//   const CustomAppBarWithSearch({
//     super.key,
//     this.onSearch,
//     this.onClose,
//     this.searchController,
//   });
//
//   final Function()? onSearch;
//   final Function()? onClose;
//   final TextEditingController? searchController;
//
//   @override
//   State<CustomAppBarWithSearch> createState() => _CustomAppBarWithSearchState();
// }
//
// class _CustomAppBarWithSearchState extends State<CustomAppBarWithSearch> {
//   final Duration duration = const Duration(milliseconds: 400);
//
//   bool opened = false;
//
//   @override
//   void initState() {
//     Future.delayed(Duration.zero, () {
//       setState(() {
//         opened = true;
//       });
//     });
//     // _controller = AnimationController(vsync: this, duration: duration);
//     super.initState();
//   }
//
//   onClose() {
//     setState(() {
//       opened = false;
//     });
//     Future.delayed(duration, widget.onClose);
//   }
//
//   onSearch() {
//     if (widget.onSearch != null) widget.onSearch!();
//     // onClose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//
//     return Container(
//       color: colorScheme.primary,
//       height: 80,
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Visibility(
//                 child: IconButton(
//                   onPressed: () {
//                     Scaffold.of(context).openDrawer();
//                   },
//                   icon: CustomIcon(
//                     MyIcons.menu,
//                     color: colorScheme.onSecondary,
//                   ),
//                 ),
//               ),
//               Center(
//                 child: AnimatedContainer(
//                   duration: duration,
//                   height: 60,
//                   width: !opened ? 50 : context.screenWidth * 0.6,
//                   child: Container(
//                     padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
//                     child: CustomSearchTextField(
//                       autoFocus: true,
//                       controller: widget.searchController,
//                       onSubmit: onSearch,
//                     ),
//                   ),
//                 ),
//               ),
//               IconButton(
//                 onPressed: onClose,
//                 icon: Icon(
//                   Icons.close,
//                   color: colorScheme.onSecondary,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
