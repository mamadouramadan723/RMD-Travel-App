import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/drawer_nav/drawer_nav_widget.dart';
import '/components/empty_projects/empty_projects_widget.dart';
import '/components/modal_create_project/modal_create_project_widget.dart';
import '/components/modal_project/modal_project_widget.dart';
import '/components/notification_trigger/notification_trigger_widget.dart';
import '/components/user_card/user_card_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'main_projects_web_widget.dart' show MainProjectsWebWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MainProjectsWebModel extends FlutterFlowModel<MainProjectsWebWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for WebNav component.
  late WebNavModel webNavModel;
  // Model for userCard component.
  late UserCardModel userCardModel;
  // Model for notification_Trigger component.
  late NotificationTriggerModel notificationTriggerModel;
  // Model for drawerNav component.
  late DrawerNavModel drawerNavModel;

  /// Query cache managers for this widget.

  final _myProjectsManager = StreamRequestManager<List<ProjectsRecord>>();
  Stream<List<ProjectsRecord>> myProjects({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ProjectsRecord>> Function() requestFn,
  }) =>
      _myProjectsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMyProjectsCache() => _myProjectsManager.clear();
  void clearMyProjectsCacheKey(String? uniqueKey) =>
      _myProjectsManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    userCardModel = createModel(context, () => UserCardModel());
    notificationTriggerModel =
        createModel(context, () => NotificationTriggerModel());
    drawerNavModel = createModel(context, () => DrawerNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    userCardModel.dispose();
    notificationTriggerModel.dispose();
    drawerNavModel.dispose();

    /// Dispose query cache managers for this widget.

    clearMyProjectsCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
