import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/assets_paths.dart';
import '../../../../core/constant/colors.dart';
import '../../../cart/bloc/cart_bloc.dart';

const _appBarPadding = EdgeInsets.all(8);
final _cartIconBorder = Border.all(
  color: secondaryColor.withOpacity(0.2),
  width: 0.1,
);

class FruitsAppBar extends StatelessWidget {
  const FruitsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: _appBarPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _LogoWidget(),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state is CartUpdate) {
                return Badge(
                  label: Text(state.cart.length.toString()),
                  child: const _CartIcon(),
                );
              }
              return const _CartIcon();
            },
          ),
        ],
      ),
    );
  }
}

class _CartIcon extends StatelessWidget {
  const _CartIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: _cartIconBorder,
        color: whiteColor,
        shape: BoxShape.circle,
      ),
      width: 50,
      height: 50,
      child: Icon(
        Icons.shopping_cart_rounded,
        size: 30,
        color: primaryColor,
        // fit: BoxFit.cover,
      ),
    );
  }
}

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 80,
        child: Image.asset(
          MyAssets.LOGO,
          fit: BoxFit.cover,
          color: darkColor,
        ),
      ),
    );
  }
}
