import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/drawer_nav/drawer_nav_widget.dart';
import '/components/modal_user_profile/modal_user_profile_widget.dart';
import '/components/notification_trigger/notification_trigger_widget.dart';
import '/components/user_card/user_card_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'main_team_page_widget.dart' show MainTeamPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainTeamPageModel extends FlutterFlowModel<MainTeamPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for drawerNav component.
  late DrawerNavModel drawerNavModel;
  // Model for WebNav component.
  late WebNavModel webNavModel;
  // Model for notification_Trigger component.
  late NotificationTriggerModel notificationTriggerModel;
  // Model for userCard component.
  late UserCardModel userCardModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drawerNavModel = createModel(context, () => DrawerNavModel());
    webNavModel = createModel(context, () => WebNavModel());
    notificationTriggerModel =
        createModel(context, () => NotificationTriggerModel());
    userCardModel = createModel(context, () => UserCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    drawerNavModel.dispose();
    webNavModel.dispose();
    notificationTriggerModel.dispose();
    userCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
