
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:test_laecture1_monib/api/Response/Brands_Response.dart';

import '../Response/Categries_Response.dart';
import '../Response/product_Response.dart';
part 'Api_client.g.dart';
@injectable
@RestApi()
abstract class Api_client{
  @factoryMethod
  factory Api_client(Dio dio, ) = _Api_client;
  @GET('v1/products')
  Future<Product_Response> getProduct({
    @Query('limit') int? parpage,
    @Query('sort') String? SortField,
  });
  @GET('v1/brands')
  Future<BrandsResponse> GetBrands();
  // Future<BrandsResponse> GetBrands();
   @GET('v1/categories')
   Future<CategriesResponse> getCategory();
}
/// Product_Response list of product from api
/// // 46