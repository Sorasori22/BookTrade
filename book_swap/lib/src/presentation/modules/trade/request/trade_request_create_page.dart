import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart' show BookId;
import 'package:book_swap/src/features/trade_request/providers/trade_request_create_provider.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

import '../../../app/app_style.dart';
import '../../../widgets/feedback/my_error_widget.dart';

@RoutePage()
class TradeRequestCreatePage extends ConsumerStatefulWidget {
  const TradeRequestCreatePage({super.key, @PathParam('bookId') required this.bookId});

  final int bookId;

  @override
  ConsumerState<TradeRequestCreatePage> createState() => _TradeRequestCreatePageState();
}

class _TradeRequestCreatePageState extends ConsumerState<TradeRequestCreatePage> {
  late final BookId bookId;

  @override
  void initState() {
    super.initState();
    bookId = BookId.fromValue(widget.bookId);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _createTradeRequest();
    });
  }

  Future<void> _createTradeRequest() async {
    await ref.read(tradeRequestCreateProvider(bookId).notifier).call();
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(tradeRequestCreateProvider(bookId));

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: () {
                if (status.isInitial) {
                  return SizedBox.shrink();
                }

                if (status.isInProgress) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 72,
                          height: 72,
                          child: CircularProgressIndicator(
                            strokeWidth: 10,
                          ),
                        ),
                        AS.hGap24,
                        Text('Creating trade request...'),
                      ],
                    ),
                  );
                }

                if (status.isFailure) {
                  return Center(
                    child: MyErrorWidget(error: status.failure),
                  );
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 78,
                      height: 78,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Congratulations!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Your swap is sucessful waiting\nfor the owner of Book Accept',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ],
                );
              }(),
            ),
            Expanded(
              child: Column(
                children: [
                  if (!status.isInProgress)
                    AppButton(
                      fullWidth: true,
                      borderRadius: AS.radiusS,
                      onPressed: () {
                        if (status.isFailure) {
                          _createTradeRequest();
                        } else {
                          context.maybePop();
                        }
                      },
                      label: status.isFailure ? 'Retry' : 'Back',
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
