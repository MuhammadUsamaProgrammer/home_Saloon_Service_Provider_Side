import 'package:flutter/material.dart';
import 'package:home_saloon/utils/theme/colors_theme_data.dart';

import '../../notifications_Screen/models/notifications_Models.dart';

class NotificationProvider extends ChangeNotifier {
  bool _allOpened =
      notificationsModel.every((notification) => notification.opened);
  bool get allOpened => _allOpened;
  void toogleNotification(int index) {
    notificationsModel[index].opened = !notificationsModel[index].opened;
    // notificationsModel[index].opened = true;
    _allOpened =
        notificationsModel.every((notification) => notification.opened);
    notifyListeners();
  }

  Color tileBackgroundColor(int index) {
    if (notificationsModel[index].opened == true) {
      return MyColors.backgroundColor;
    } else
      return MyColors.unRead_notification_tile_Color;
  }
}
