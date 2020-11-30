import 'package:bloc/bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_use/bean/common/btn_info.dart';

part 'smart_dialog_state.dart';

class SmartDialogCubit extends Cubit<SmartDialogState> {
  SmartDialogCubit() : super(SmartDialogState().init());

  ///测试功能模块
  void showFun(context, tag) {
    switch (tag) {
      case 'test':
        SmartDialog.instance.show();
        break;
    }
  }
}
