import 'package:chuctet/common/enums.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class BaseModel extends ChangeNotifier {
  ViewState _viewState = ViewState.loading;

  ViewState get viewState => _viewState;

  set viewState(ViewState value) {
    _viewState = value;
    notifyListeners();
  }
}
