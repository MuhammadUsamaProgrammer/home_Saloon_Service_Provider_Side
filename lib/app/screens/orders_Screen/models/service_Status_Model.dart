import 'package:easy_localization/easy_localization.dart';
import 'package:home_saloon/utils/localization/keys/codegen_loader.g.dart';

class ServiceStatusModel {
  final String status;
  final String tileTital;

  ServiceStatusModel({required this.status, required this.tileTital});
}

List<ServiceStatusModel> serviceStatusModel = [
  ServiceStatusModel(
      tileTital: LocaleKeys.Active.tr(), status: LocaleKeys.In_Progress.tr()),
  ServiceStatusModel(
      tileTital: LocaleKeys.Pending.tr(), status: LocaleKeys.Pending.tr()),
  ServiceStatusModel(tileTital: LocaleKeys.Declined.tr(), status: 'Cancelled'),
  ServiceStatusModel(tileTital: LocaleKeys.Completed.tr(), status: 'Fulfilled'),
];
