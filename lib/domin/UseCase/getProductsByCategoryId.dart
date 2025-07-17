import 'package:injectable/injectable.dart';
import 'package:test_laecture1_monib/domin/repositeries/products_Rpo.dart';

import '../model/product.dart';
@injectable
class getProductsByCategoryId{
  Product_Rpo _product_rpo;
  getProductsByCategoryId(this._product_rpo);
  Future<List<Product>> invoke (){
    return _product_rpo.getproduct();
  }
}