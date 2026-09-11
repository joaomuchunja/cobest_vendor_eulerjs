import 'package:cobes_marketplace_vendor/data/model/response/base/api_response.dart';
import 'package:cobes_marketplace_vendor/interface/repository_interface.dart';

abstract class CategoryRepositoryInterface implements RepositoryInterface {
  Future<ApiResponse> getCategoryList(String languageCode);

}