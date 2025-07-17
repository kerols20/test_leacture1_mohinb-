import 'package:injectable/injectable.dart';
import 'package:test_laecture1_monib/api/client/Api_client.dart';
import 'package:test_laecture1_monib/domin/model/brand.dart';

import '../../Data/Data_Source/Brands_Remote_Data_Source.dart';
@Injectable(as: Brands_Remote_Data_Source)
class Brands_Remote_Data_Source_Imp implements Brands_Remote_Data_Source{
  Api_client _api_client;
  Brands_Remote_Data_Source_Imp(this._api_client);
  @override
  Future<List<Brand>> getBrands() async{
    var response = await _api_client.GetBrands();
    return response.data?.map((Dto) => Dto.toBrand()).toList() ?? [];
  }
}