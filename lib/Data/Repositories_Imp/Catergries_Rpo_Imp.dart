import 'package:injectable/injectable.dart';
import 'package:test_laecture1_monib/domin/model/categroy.dart';

import '../../domin/repositeries/Categries_Rpo.dart';
import '../Data_Source/categries_Remote_Data_Source.dart';
@Injectable(as: Category_Rpo)
class catergries_RpoImp implements Category_Rpo{
  categries_Remote_Data_Source _categries_Remote_Data_Source;
  catergries_RpoImp(this._categries_Remote_Data_Source);
  @override
  Future<List<Category>> getCategory(
      int limit
      ) {
    return _categries_Remote_Data_Source.getCategory(
      limit,
    );
  }

}