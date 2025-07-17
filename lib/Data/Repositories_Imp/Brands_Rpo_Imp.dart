import 'package:injectable/injectable.dart';
import 'package:test_laecture1_monib/domin/model/brand.dart';

import '../../domin/repositeries/Brands_Rpo.dart';
import '../Data_Source/Brands_Remote_Data_Source.dart';
@Injectable(as: BrandsRpo)
class Brand_Rpo_Imp implements BrandsRpo{
  Brands_Remote_Data_Source _brands_Remote_Data_Source;
  Brand_Rpo_Imp(this._brands_Remote_Data_Source);
  @override
  Future<List<Brand>> getBrands() {
    return _brands_Remote_Data_Source.getBrands();
  }
}