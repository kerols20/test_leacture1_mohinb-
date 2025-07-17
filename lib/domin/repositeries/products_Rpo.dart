import '../model/product.dart';

abstract class Product_Rpo{
  Future<List<Product>> getproduct();
}