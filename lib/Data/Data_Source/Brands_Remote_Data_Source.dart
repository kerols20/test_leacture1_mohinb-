import 'package:test_laecture1_monib/domin/model/brand.dart';

abstract class Brands_Remote_Data_Source{
  Future<List<Brand>> getBrands();
}