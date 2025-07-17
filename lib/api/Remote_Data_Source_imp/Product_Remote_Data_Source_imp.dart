import 'package:injectable/injectable.dart';

import '../../Data/Data_Source/Product_Remote_Data_Source.dart';
import '../../domin/model/product.dart';
import '../client/Api_client.dart';
@Injectable(as: Product_Remote_Data_Source)
class productRemoteDataSource_Imp implements Product_Remote_Data_Source{
  Api_client _api_client;
  productRemoteDataSource_Imp(this._api_client);
  @override
  Future<List<Product>> getproduct() async{
     var response = await _api_client.getProduct(
       parpage: 20,
       SortField: 'price',
     );
     return response.data?.map((ProdctDto)=> ProdctDto.toProduct()).toList() ?? [];
  }
}
/// 1.33
/// data list of product Dto we will convert to Product by map