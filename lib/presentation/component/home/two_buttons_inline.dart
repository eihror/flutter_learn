import 'package:flutter/material.dart';
import 'package:flutter_learn/presentation/domain/home/user_data_line.dart';
import 'package:flutter_learn/presentation/domain/screen_page.dart';

class TwoButtonsInline extends StatelessWidget {
  final List<UserDataLine> list;
  final Function(ScreenPage value) onClickItemListener;

  const TwoButtonsInline({
    super.key,
    required this.list,
    required this.onClickItemListener,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: list.map((element) {
        var index = list.indexOf(element);

        EdgeInsets cardPadding;

        if (index % 2 == 0) {
          cardPadding =
              const EdgeInsets.only(left: 8, right: 4, top: 8, bottom: 4);
        } else {
          cardPadding =
              const EdgeInsets.only(left: 4, right: 8, top: 8, bottom: 4);
        }

        return Flexible(
          child: Padding(
            padding: cardPadding,
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () {
                    onClickItemListener(element.screenPage);
                  },
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(element.quantity.toString()),
                        Text(element.description),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
