//@formatter:off

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tasks_7_3/app/app.dart';
import 'package:flutter_tasks_7_3/app/app_initialization.dart';
import 'package:flutter_tasks_7_3/app/banned_app.dart';
import 'package:flutter_tasks_7_3/app/util/extension/orientation_extension.dart';
import 'package:flutter_tasks_7_3/core/arch/bloc/app_bloc_observer.dart';
import 'package:flutter_tasks_7_3/core/arch/logger/app_logger_impl.dart';
import 'package:flutter_tasks_7_3/core/di/services.dart';

Future<void> main() async {
  unawaited(
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Initialization.I.initApp();

        await OrientationExtension.lockVertical();

        Bloc.observer = AppBlocObserver();
        final isAllowedToUseApp = await environmentService().initialize();
        if (isAllowedToUseApp) {
          runApp(const App());
        } else {
          runApp(const BannedApp());
        }
      },
      (error, stackTrace) {
        logger.crash(error: error, stackTrace: stackTrace, reason: 'main');
      },
    )?.catchError((e, trace) {
      logger.crash(error: e, stackTrace: trace, reason: 'main');
      exit(-1);
    }),
  );
}
