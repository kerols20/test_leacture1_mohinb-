import 'package:injectable/injectable.dart';
import 'package:test_laecture1_monib/api/client/Api_client.dart';
import 'package:test_laecture1_monib/domin/model/categroy.dart';

import '../../Data/Data_Source/categries_Remote_Data_Source.dart';
@Injectable(as: categries_Remote_Data_Source)
class categries_Remote_Data_Source_Imp implements categries_Remote_Data_Source{
  Api_client _api_client;
  categries_Remote_Data_Source_Imp(this._api_client);
  @override
  Future<List<Category>> getCategory(
      limit,
      )async {
    var response = await _api_client.getCategory();
    return response.data?.map((Dto) => Dto.toCategory()).toList() ?? [];
  }

}