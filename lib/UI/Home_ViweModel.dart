import 'package:injectable/injectable.dart';

import '../domin/UseCase/getProductsByCategoryId.dart';
@injectable
class Home_viweModel{
  getProductsByCategoryId _categoryId;
  Home_viweModel(this._categoryId);
  gatCategory()async{
    return await _categoryId.invoke(
    );
  }
}
