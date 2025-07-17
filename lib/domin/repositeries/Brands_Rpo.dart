
import 'package:test_laecture1_monib/domin/model/brand.dart';

abstract class BrandsRpo{
  Future<List<Brand>> getBrands();
}