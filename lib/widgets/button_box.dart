import 'package:final_proj_flutter/util/appcolors.dart';
import 'package:final_proj_flutter/util/apptext.dart';
import 'package:final_proj_flutter/widgets/basic_button.dart';
import 'package:flutter/material.dart';

enum ButtonState { buttonDefault, inUse, disabled }

class ButtonBox extends StatelessWidget {
  const ButtonBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.buttonSetDefault,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          BasicButton(label: '말하기', textStyle: AppText.buttonText),
          const SizedBox(width: 24),
          BasicButton(label: '메뉴 다 보기', textStyle: AppText.buttonText),
          const SizedBox(width: 24),
          BasicButton(label: '장바구니', textStyle: AppText.buttonText),
        ],
      ),
    );
  }
}
