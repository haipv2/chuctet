import 'package:get_it/get_it.dart';

import 'models/base_model.dart';
import 'modelsview/list_wish_model.dart';
import 'services/api.dart';

GetIt locator = GetIt.instance;

void setup() {

  locator.registerLazySingleton(()=> Api('loichuc'));


  locator.registerFactory(() => ListWishModel());
  locator.registerFactory(() => BaseModel());
}
