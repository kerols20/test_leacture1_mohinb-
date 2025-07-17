import 'package:injectable/injectable.dart';

import '../model/categroy.dart';
import '../repositeries/Categries_Rpo.dart';
@injectable
class GetCategory_UseCase{
  Category_Rpo _category_rpo;
  GetCategory_UseCase(this._category_rpo);
  Future<List<Category>> invoke (int limit){
    return _category_rpo.getCategory(
      limit,
    );
  }
}