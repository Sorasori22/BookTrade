import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:flutter/material.dart';

import '../../app/app_style.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    super.key,
    this.title,
    this.actions = const [],
    required this.child,
  });

  final Widget? title;
  final List<Widget> actions;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(AS.radiusXL)),
              ),
              child: Column(
                children: [
                  if (title != null || actions.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AS.sidePadding,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          if (title != null)
                            DefaultTextStyle.merge(
                              style: context.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              child: title!,
                            ),
                          Spacer(),
                          if (actions.isNotEmpty) ...actions,
                        ],
                      ),
                    ),
                    Divider(height: 0),
                    AS.hGap12,
                  ],
                  Expanded(
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
