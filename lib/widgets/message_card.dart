import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mindlee_demo/controllers/riverpod_menagement.dart';
import 'package:mindlee_demo/models/daily_message_models/daily_message_model.dart';
import 'package:mindlee_demo/utils/constant.dart';
import 'package:mindlee_demo/utils/custom_theme_data.dart';
import 'package:mindlee_demo/utils/extensions.dart';
import 'package:mindlee_demo/utils/fonts.dart';
import 'package:mindlee_demo/utils/translations/locale_keys.g.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MessageCard extends ConsumerStatefulWidget {
  const MessageCard({
    super.key,
    required this.model,
  });
  final DailyMessageModel model;
  @override
  ConsumerState<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends ConsumerState<MessageCard> {
  @override
  void initState() {
    super.initState();
    getTextSize();
  }

  void getTextSize() async {
    ref
        .read(dailyMessageController)
        .getTextSize(text: widget.model.dailyMessage);
  }

  @override
  Widget build(BuildContext context) {
    var read = ref.read(dailyMessageController);
    var watch = ref.watch(dailyMessageController);

    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: context.dynamicWidth(0.05)),
          decoration: BoxDecoration(
              color: CustomThemeData.whiteColor.withOpacity(0.2),
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
                          Text(LocaleKeys.dear,
                                  style:
                                      CustomFonts.customFont18SemiBoldSecondary)
                              .tr(),
                          Text(
                            ' ${widget.model.userName},',
                            style: CustomFonts.customFont18SemiBoldSecondary,
                            softWrap: true,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )),
                  Text(
                    widget.model.date,
                    style: CustomFonts.customFont12Secondary,
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              const SizedBox(height: AppConstant.padding20),
              watch.textSize.width > AppConstant.textSizeMaxArea
                  ? SizedBox(
                      height: AppConstant.padding40.h,
                      child: SingleChildScrollView(
                        child: Text(
                          widget.model.dailyMessage,
                          style: CustomFonts.customFont16Secondary,
                        ),
                      ),
                    )
                  : Text(
                      widget.model.dailyMessage,
                      style: CustomFonts.customFont16Secondary,
                    ),
              const SizedBox(height: AppConstant.padding20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      read.isLiked(id: widget.model.id);
                    },
                    child: watch.likedList.contains(widget.model.id)
                        ? const Icon(
                            Icons.favorite,
                            color: CustomThemeData.redColor,
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: CustomThemeData.whiteColor,
                          ),
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
        ),
      ],
    );
  }
}
