import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/extensions.dart';
import 'package:mindlee_demo/utils/fonts.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.dynamicWidth(0.05)),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(AppConstant.padding10)),
      padding: const EdgeInsets.symmetric(
        vertical: AppConstant.padding20,
        horizontal: AppConstant.padding25,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: size.width / 2,
                  child: Row(
                    children: [
                      const Text('dear', style: customFont18SemiBoldSecondary)
                          .tr(),
                      const Text(
                        ' Onur,',
                        style: customFont18SemiBoldSecondary,
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )),
              const Text(
                '28.01.2024',
                style: customFont12Secondary,
                softWrap: true,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          const SizedBox(height: AppConstant.padding20),
          const Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web ',
            style: customFont16Secondary,
          ),
          const SizedBox(height: AppConstant.padding20),
          const Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: CustomThemeData.whiteColor,
              ),
            ],
          ),
          const SizedBox(height: AppConstant.padding20),
          const Icon(
            Icons.ios_share,
            color: CustomThemeData.whiteColor,
          ),
        ],
      ),
    );
  }
}
