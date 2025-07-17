import 'package:injectable/injectable.dart';

import '../../domin/model/product.dart';
import '../../domin/repositeries/products_Rpo.dart';
import '../../Data/Data_Source/Product_Remote_Data_Source.dart';
@Injectable(as: Product_Rpo)
class products_Rpo_Imp implements Product_Rpo{
  Product_Remote_Data_Source _product_Remote_Data_Source;
  products_Rpo_Imp(this._product_Remote_Data_Source);
  @override
  Future<List<Product>> getproduct() {
    return _product_Remote_Data_Source.getproduct();
  }
}
