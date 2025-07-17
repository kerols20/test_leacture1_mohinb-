

import '../../domin/model/product.dart';

abstract class Product_Remote_Data_Source{
  Future<List<Product>> getproduct();
}