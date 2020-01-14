import 'package:get_it/get_it.dart';

import 'models/base_model.dart';
import 'modelsview/list_wish_model.dart';

GetIt locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton(() => ListWishModel());
  locator.registerLazySingleton(() => BaseModel());
}
