

import 'package:cobes_marketplace_vendor/data/model/response/base/api_response.dart';
import 'package:cobes_marketplace_vendor/interface/repository_interface.dart';

abstract class NotificationRepositoryInterface implements RepositoryInterface{
  Future<ApiResponse> seenNotification(int id);
}