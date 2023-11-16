import '../../../../localization/keys/codegen_loader.g.dart';

class ProfileTileModel {
  final String text;
  ProfileTileModel({
    required this.text,
  });
}

List<ProfileTileModel> profileTileModel = [
  ProfileTileModel(
    text: LocaleKeys.Edit_Profile,
  ),
  ProfileTileModel(
    text: LocaleKeys.My_Wallet,
  ),
  ProfileTileModel(
    text: LocaleKeys.Settings,
  ),
];
