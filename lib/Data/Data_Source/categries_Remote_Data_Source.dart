import 'package:test_laecture1_monib/domin/model/categroy.dart';

abstract class categries_Remote_Data_Source{
  Future<List<Category>> getCategory(
      int limit
      );
}