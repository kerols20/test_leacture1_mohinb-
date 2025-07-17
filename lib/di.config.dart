// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'api/client/Api_client.dart' as _i295;
import 'api/client/Api_module.dart' as _i706;
import 'api/Remote_Data_Source_imp/Brands_Remote_Data_Source_Imp.dart' as _i349;
import 'api/Remote_Data_Source_imp/categries_Remote_Data_Source_Imp.dart'
    as _i281;
import 'api/Remote_Data_Source_imp/Product_Remote_Data_Source_imp.dart'
    as _i1022;
import 'Data/Data_Source/Brands_Remote_Data_Source.dart' as _i826;
import 'Data/Data_Source/categries_Remote_Data_Source.dart' as _i916;
import 'Data/Data_Source/Product_Remote_Data_Source.dart' as _i813;
import 'Data/Repositories_Imp/Brands_Rpo_Imp.dart' as _i484;
import 'Data/Repositories_Imp/Catergries_Rpo_Imp.dart' as _i682;
import 'Data/Repositories_Imp/products_Rposetries_Imp.dart' as _i152;
import 'domin/repositeries/Brands_Rpo.dart' as _i639;
import 'domin/repositeries/Categries_Rpo.dart' as _i740;
import 'domin/repositeries/products_Rpo.dart' as _i794;
import 'domin/UseCase/GetCategory_UseCase.dart' as _i898;
import 'domin/UseCase/getProductsByCategoryId.dart' as _i78;
import 'UI/Home_ViweModel.dart' as _i89;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final api_module = _$Api_module();
    gh.singleton<_i361.Dio>(() => api_module.provideDio());
    gh.factory<_i295.Api_client>(() => _i295.Api_client(gh<_i361.Dio>()));
    gh.factory<_i826.Brands_Remote_Data_Source>(
      () => _i349.Brands_Remote_Data_Source_Imp(gh<_i295.Api_client>()),
    );
    gh.factory<_i916.categries_Remote_Data_Source>(
      () => _i281.categries_Remote_Data_Source_Imp(gh<_i295.Api_client>()),
    );
    gh.factory<_i813.Product_Remote_Data_Source>(
      () => _i1022.productRemoteDataSource_Imp(gh<_i295.Api_client>()),
    );
    gh.factory<_i740.Category_Rpo>(
      () => _i682.catergries_RpoImp(gh<_i916.categries_Remote_Data_Source>()),
    );
    gh.factory<_i794.Product_Rpo>(
      () => _i152.products_Rpo_Imp(gh<_i813.Product_Remote_Data_Source>()),
    );
    gh.factory<_i898.GetCategory_UseCase>(
      () => _i898.GetCategory_UseCase(gh<_i740.Category_Rpo>()),
    );
    gh.factory<_i78.getProductsByCategoryId>(
      () => _i78.getProductsByCategoryId(gh<_i794.Product_Rpo>()),
    );
    gh.factory<_i639.BrandsRpo>(
      () => _i484.Brand_Rpo_Imp(gh<_i826.Brands_Remote_Data_Source>()),
    );
    gh.factory<_i89.Home_viweModel>(
      () => _i89.Home_viweModel(gh<_i78.getProductsByCategoryId>()),
    );
    return this;
  }
}

class _$Api_module extends _i706.Api_module {}
