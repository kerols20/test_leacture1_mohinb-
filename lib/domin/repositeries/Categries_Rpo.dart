
import 'package:test_laecture1_monib/domin/model/categroy.dart';
abstract class Category_Rpo{
  Future<List<Category>> getCategory(int limit);
}